def extractBestProductPriceByCategory(store, category)
  product = Product.where(:store_id => store.id, :category_id => category.category.id)
                   .order(unit_price: :asc)
                   .first
end

def extractBestProductPriceByDescription(store, category)
  product = Product.where(:store_id => store.id, :category_id => category.category.id, :description_id => category.description.id)
                   .order(unit_price: :asc)
                   .first
end

def findBestPriceByCategory(store, category)
  product = extractBestProductPriceByCategory(store, category)
  puts "\t\tBest price for product #{product.description.description} #{product.provider.name} is in store : #{store.name} at #{product.price}" 
end

def findBestPriceBySubCategory(store, category)
  product = extractBestProductPriceByDescription(store, category)
  puts "\t\tBest price for product #{product.description.description} #{product.provider.name} is in store : #{store.name} at #{product.price}" 
end

first_list = List.first
puts "Processing list # " + first_list.id.to_s + " (Best Price By Store / Category / SubCategory)"

user = first_list.user
puts "The user associated with that first list is : " + user.name

categories = ListCategory.where(list_id: first_list.id)
num_of_stores = 3
num_of_categories = categories.count
puts "Number of categories = #{num_of_categories}"

stores = Store.all
categories.each do |category|
  puts "Category = " + category.category.name
  stores.each do |store|
    #findBestPriceByCategory(store, category)
    findBestPriceBySubCategory(store, category)
  end
end
