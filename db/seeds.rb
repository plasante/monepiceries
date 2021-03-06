user_pierre = User.create!(name:  "Pierre Lasante",
                           email: "pierre.lasante@videotron.ca",
                           password:              "123456",
                           password_confirmation: "123456",
                           admin: true,
                           language: "fr",
                           activated: true,
                           activated_at: Time.zone.now)

User.create!(name:  "Carole Spenard",
             email: "cspenard@videotron.ca",
             password:              "123456",
             password_confirmation: "123456",
             language: "en",
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Juby Spenard",
             email: "jspenard@videotron.ca",
             password:              "123456",
             password_confirmation: "123456",
             language: "es",
             activated: true,
             activated_at: Time.zone.now)

canada  = Country.create!(name: "Canada")
usa     = Country.create!(name: "USA")
mexique = Country.create!(name: "Mexique")

quebec  = State.create!(name: "Qc")
ontario = State.create!(name: "On")

iga_mascouche_addresse = Address.create!(street: "65 Montée Masson",
                                         city:   "Mascouche",
                                         zip:    "J7K 3B4",
                                         state_id:   quebec.id,
                                         country_id: canada.id)
                                         
metro_mascouche_addresse = Address.create!(street: "875 Montée Masson",
                                           city:   "Mascouche",
                                           zip:    "J7K 3T3",
                                           state_id:   quebec.id,
                                           country_id: canada.id)
                                         
maxi_mascouche_addresse = Address.create!(street: "1100 Montée Masson",
                                          city:   "Mascouche",
                                          zip:    "J7K 3B8",
                                          state_id:   quebec.id,
                                          country_id: canada.id)
                                          
iga_mascouche_store   = Store.create!(name: "IGA EXTRA",
                                      address_id: iga_mascouche_addresse.id)

metro_mascouche_store = Store.create!(name: "Metro Plus",
                                      address_id: metro_mascouche_addresse.id)
                                      
maxi_mascouche_store  = Store.create!(name: "Maxi",
                                      address_id: maxi_mascouche_addresse.id)

provider_lactantia = Provider.create!(name: "Lactancia")
provider_quebon = Provider.create!(name: "Quebon")
provider_country_harvest = Provider.create!(name: "Country Harvest")
provider_maxwell_house = Provider.create!(name: "Maxwell House")
provider_general_mills = Provider.create!(name: "General Mills")
provider_iga = Provider.create!(name: "IGA")
provider_metro = Provider.create!(name: "Metro")
provider_maxi = Provider.create!(name: "Maxi")
                                      
category_produit_laitier   = Category.create!(name: "Lait")
category_produit_pain      = Category.create!(name: "Pain")
category_produit_cafe      = Category.create!(name: "Café")
category_produit_cereale   = Category.create!(name: "Céréales")
category_produit_viande    = Category.create!(name: "Viande")
category_produit_vin       = Category.create!(name: "Vin")
category_produit_biere     = Category.create!(name: "Biere")
category_produit_the       = Category.create!(name: "Thé")
category_produit_boisson   = Category.create!(name: "Boissons gazeuses")
category_produit_margarine = Category.create!(name: "Margarine")
category_produit_beurre    = Category.create!(name: "Beurre")
category_produit_eau       = Category.create!(name: "Eau")
category_produit_epice     = Category.create!(name: "Epices")
category_produit_pate      = Category.create!(name: "Pates alimentaires")

subCategory_category_produit_laitier  = category_produit_laitier.sub_categories.create!(sous_category: "Lait 2%")
subCategory_category_produit_laitier2 = category_produit_laitier.sub_categories.create!(sous_category: "Lait 1%")
subCategory_category_produit_pain     = category_produit_pain.sub_categories.create!(sous_category: "Pain blanc, blé entier")
subCategory_category_produit_cafe     = category_produit_cafe.sub_categories.create!(sous_category: "Café régulier")
subCategory_category_produit_cereale  = category_produit_cereale.sub_categories.create!(sous_category: "Céréale")
subCategory_category_produit_viande   = category_produit_viande.sub_categories.create!(sous_category: "Boeuf haché mi-maigre")

description_lait_1pct = Description.create!(description: "Lait 1%")
description_lait_2pct = Description.create!(description: "Lait 2%")
description_pain_blanc_ble_entier = Description.create!(description: "Pain blanc, blé entier")
description_cafe_regulier = Description.create!(description: "Café régulier")
description_cereale = Description.create!(description: "Céréale")
description_boeuf_hache_mi_maigre = Description.create!(description: "Boeuf haché mi-maigre")

#
# IGA
#
# Lait 2% Lactantia
Product.create!(provider_id: provider_lactantia.id,
                                             price: 399,
                                             format: "2000ml",
                                             unit_price: ((100 * 399) / 2000).to_i,
                                             description_id: description_lait_2pct.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,    
                                             store_id:    iga_mascouche_store.id)
# Lait 1% Lactantia
Product.create!(provider_id: provider_lactantia.id,
                                             price: 399,
                                             format: "2000ml",
                                             unit_price: ((100 * 399) / 2000).to_i,
                                             description_id: description_lait_1pct.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,    
                                             store_id:    iga_mascouche_store.id)
# Lait 2% Quebon                                             
Product.create!(provider_id: provider_quebon.id,
                                             price: 288,
                                             format: "2000ml",
                                             unit_price: ((100 * 288) / 2000).to_i,
                                             description_id: description_lait_2pct.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,    
                                             store_id:    iga_mascouche_store.id
                                             )
# Pain ble entier Country Harvest                                             
Product.create!(provider_id: provider_country_harvest.id,
                                             price: 489,
                                             format: "600g",
                                             description_id: description_pain_blanc_ble_entier.id,
                                             diabetic: true,
                                             category_id: category_produit_pain.id,
                                             store_id:    iga_mascouche_store.id)
# Cafe regulier Maxwell House
Product.create!(provider_id: provider_maxwell_house.id,
                                             price: 899,
                                             format: "263g",
                                             description_id: description_cafe_regulier.id,
                                             diabetic: false,
                                             category_id: category_produit_cafe.id,
                                             store_id:    iga_mascouche_store.id)
# Cereale Cheerion
Product.create!(provider_id: provider_general_mills.id,
                                                price: 799,
                                                format: "525g",
                                                description_id: description_cereale.id,
                                                diabetic: true,
                                                category_id: category_produit_cereale.id,
                                                store_id:    iga_mascouche_store.id)
# Boeuf hache mi-maigre
Product.create!(provider_id: provider_iga.id,
                                               price: 989,
                                               format: "1000g",
                                               description_id: description_boeuf_hache_mi_maigre.id,
                                               diabetic: false,
                                               category_id: category_produit_viande.id,
                                               store_id:    iga_mascouche_store.id)
#
# METRO
#
Product.create!(provider_id: provider_lactantia.id,
                                             price: 398,
                                             format: "2000ml",
                                             description_id: description_lait_2pct.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,
                                             store_id:    metro_mascouche_store.id)

Product.create!(provider_id: provider_country_harvest.id,
                                             price: 488,
                                             format: "600g",
                                             description_id: description_pain_blanc_ble_entier.id,
                                             diabetic: true,
                                             category_id: category_produit_pain.id,
                                             store_id:    metro_mascouche_store.id)

Product.create!(provider_id: provider_maxwell_house.id,
                                             price: 898,
                                             format: "263g",
                                             description_id: description_cafe_regulier.id,
                                             diabetic: false,
                                             category_id: category_produit_cafe.id,
                                             store_id:    metro_mascouche_store.id)

Product.create!(provider_id: provider_general_mills.id,
                                                price: 798,
                                                format: "525g",
                                                description_id: description_cereale.id,
                                                diabetic: true,
                                                category_id: category_produit_cereale.id,
                                                store_id:    metro_mascouche_store.id)

Product.create!(provider_id: provider_metro.id,
                                               price: 988,
                                               format: "1000g",
                                               description_id: description_boeuf_hache_mi_maigre.id,
                                               diabetic: false,
                                               category_id: category_produit_viande.id,
                                               store_id:    metro_mascouche_store.id)
#
# Maxi
#
Product.create!(provider_id: provider_lactantia.id,
                                             price: 397,
                                             format: "2000ml",
                                             description_id: description_lait_2pct.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,
                                             store_id:    maxi_mascouche_store.id)

Product.create!(provider_id: provider_country_harvest.id,
                                             price: 487,
                                             format: "600g",
                                             description_id: description_pain_blanc_ble_entier.id,
                                             diabetic: true,
                                             category_id: category_produit_pain.id,
                                             store_id:    maxi_mascouche_store.id)

Product.create!(provider_id: provider_maxwell_house.id,
                                             price: 897,
                                             format: "263g",
                                             description_id: description_cafe_regulier.id,
                                             diabetic: false,
                                             category_id: category_produit_cafe.id,
                                             store_id:    maxi_mascouche_store.id)

Product.create!(provider_id: provider_general_mills.id,
                                                price: 797,
                                                format: "525g",
                                                description_id: description_cereale.id,
                                                diabetic: true,
                                                category_id: category_produit_cereale.id,
                                                store_id:    maxi_mascouche_store.id)

Product.create!(provider_id: provider_maxi.id,
                                               price: 987,
                                               format: "1000g",
                                               description_id: description_boeuf_hache_mi_maigre.id,
                                               diabetic: false,
                                               category_id: category_produit_viande.id,
                                               store_id:    maxi_mascouche_store.id)

list_pierre = List.create!(user_id: user_pierre.id)

list_category_lait    = ListCategory.create!( list_id:    list_pierre.id,
                                              category_id: category_produit_laitier.id,
                                              description_id: description_lait_2pct.id)
list_category_pain    = ListCategory.create!( list_id:    list_pierre.id,
                                              category_id: category_produit_pain.id,
                                              description_id: description_pain_blanc_ble_entier.id)
list_category_cafe    = ListCategory.create!( list_id:    list_pierre.id,
                                              category_id: category_produit_cafe.id,
                                              description_id: description_cafe_regulier.id)
list_category_cereale = ListCategory.create!( list_id:    list_pierre.id,
                                              category_id: category_produit_cereale.id,
                                              description_id: description_cereale.id)
list_category_viande  = ListCategory.create!( list_id:    list_pierre.id,
                                              category_id: category_produit_viande.id,
                                              description_id: description_boeuf_hache_mi_maigre.id)

if Rails.env.development?
  30.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password,
                 activated: true,
                 activated_at: Time.zone.now)
  end
  
  user = User.first
  10.times do |n|
    content = Faker::Lorem.sentence(5)
    user.microposts.create!(content: content)
  end
  
  user2 = User.second
  10.times do |n|
    content = Faker::Lorem.sentence(5)
    user2.microposts.create!(content: content)
  end
  
  user3 = User.third
  10.times do |n|
    content = Faker::Lorem.sentence(5)
    user3.microposts.create!(content: content)
  end
end