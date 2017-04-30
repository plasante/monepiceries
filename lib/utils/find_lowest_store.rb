def extractPriceProduct(store, category)
  product = Product.where(:store_id => store.id, :category_id => category.category.id)
                   .order(unit_price: :asc)
                   .first
end

def findBestPrice(store, category)
  product = extractPriceProduct(store, category)
  puts "\t\tBest price for product #{product.description} is in store : #{store.name} at #{product.price}" 
end

first_list = List.first
puts "Processing list # " + first_list.id.to_s

user = first_list.user
puts "The user associated with that first list is : " + user.name

categories = ListCategory.where(list_id: first_list.id)
stores = Store.all
categories.each do |category|
  puts "Category = " + category.category.name
  stores.each do |store|
    findBestPrice(store, category)
  end
end
