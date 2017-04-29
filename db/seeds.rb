User.create!(name:  "Pierre Lasante",
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
                                      
category_produit_laitier = Category.create!(name: "Lait")
category_produit_pain    = Category.create!(name: "Pain")
category_produit_cafe    = Category.create!(name: "Café")
category_produit_cereale = Category.create!(name: "Cereale")
category_produit_viande  = Category.create!(name: "Viande")

subCategory_category_produit_laitier = category_produit_laitier.sub_categories.create!(description: "Lait 2%")
subCategory_category_produit_pain = category_produit_pain.sub_categories.create!(description: "Pain blanc, blé entier")
subCategory_category_produit_cafe = category_produit_cafe.sub_categories.create!(description: "Café régulier")
subCategory_category_produit_cereale = category_produit_cereale.sub_categories.create!(description: "Céréale")
subCategory_category_produit_viande = category_produit_viande.sub_categories.create!(description: "Boeuf haché mi-maigre")

produit_lait_iga_mascouche = Product.create!(fournisseur: "Lactantia",
                                             price: 399,
                                             format: "2L",
                                             description: subCategory_category_produit_laitier.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,
                                             store_id:    iga_mascouche_store.id)

produit_pain_iga_mascouche = Product.create!(fournisseur: "Country Harvest",
                                             price: 489,
                                             format: "600G",
                                             description: subCategory_category_produit_pain.id,
                                             diabetic: true,
                                             category_id: category_produit_pain.id,
                                             store_id:    iga_mascouche_store.id)

produit_cafe_iga_mascouche = Product.create!(fournisseur: "Maxwell House",
                                             price: 899,
                                             format: "14",
                                             description: subCategory_category_produit_cafe.id,
                                             diabetic: false,
                                             category_id: category_produit_cafe.id,
                                             store_id:    iga_mascouche_store.id)

produit_cereale_iga_mascouche = Product.create!(fournisseur: "General Mills",
                                                price: 799,
                                                format: "525G",
                                                description: subCategory_category_produit_cereale.id,
                                                diabetic: true,
                                                category_id: category_produit_cereale.id,
                                                store_id:    iga_mascouche_store.id)

produit_viande_iga_mascouche = Product.create!(fournisseur: "IGA",
                                               price: 989,
                                               format: "1000G",
                                               description: subCategory_category_produit_viande.id,
                                               diabetic: false,
                                               category_id: category_produit_viande.id,
                                               store_id:    iga_mascouche_store.id)

produit_lait_metro_mascouche = Product.create!(fournisseur: "Lactantia",
                                             price: 398,
                                             format: "2L",
                                             description: subCategory_category_produit_laitier.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,
                                             store_id:    metro_mascouche_store.id)

produit_pain_metro_mascouche = Product.create!(fournisseur: "Country Harvest",
                                             price: 488,
                                             format: "600G",
                                             description: subCategory_category_produit_pain.id,
                                             diabetic: true,
                                             category_id: category_produit_pain.id,
                                             store_id:    metro_mascouche_store.id)

produit_cafe_metro_mascouche = Product.create!(fournisseur: "Maxwell House",
                                             price: 898,
                                             format: "14",
                                             description: subCategory_category_produit_cafe.id,
                                             diabetic: false,
                                             category_id: category_produit_cafe.id,
                                             store_id:    metro_mascouche_store.id)

produit_cereale_metro_mascouche = Product.create!(fournisseur: "General Mills",
                                                price: 798,
                                                format: "525G",
                                                description: subCategory_category_produit_cereale.id,
                                                diabetic: true,
                                                category_id: category_produit_cereale.id,
                                                store_id:    metro_mascouche_store.id)

produit_viande_metro_mascouche = Product.create!(fournisseur: "metro",
                                               price: 988,
                                               format: "1000G",
                                               description: subCategory_category_produit_viande.id,
                                               diabetic: false,
                                               category_id: category_produit_viande.id,
                                               store_id:    metro_mascouche_store.id)

produit_lait_maxi_mascouche = Product.create!(fournisseur: "Lactantia",
                                             price: 397,
                                             format: "2L",
                                             description: subCategory_category_produit_laitier.id,
                                             diabetic: false,
                                             category_id: category_produit_laitier.id,
                                             store_id:    maxi_mascouche_store.id)

produit_pain_maxi_mascouche = Product.create!(fournisseur: "Country Harvest",
                                             price: 487,
                                             format: "600G",
                                             description: subCategory_category_produit_pain.id,
                                             diabetic: true,
                                             category_id: category_produit_pain.id,
                                             store_id:    maxi_mascouche_store.id)

produit_cafe_maxi_mascouche = Product.create!(fournisseur: "Maxwell House",
                                             price: 897,
                                             format: "14",
                                             description: subCategory_category_produit_cafe.id,
                                             diabetic: false,
                                             category_id: category_produit_cafe.id,
                                             store_id:    maxi_mascouche_store.id)

produit_cereale_maxi_mascouche = Product.create!(fournisseur: "General Mills",
                                                price: 797,
                                                format: "525G",
                                                description: subCategory_category_produit_cereale.id,
                                                diabetic: true,
                                                category_id: category_produit_cereale.id,
                                                store_id:    maxi_mascouche_store.id)

produit_viande_maxi_mascouche = Product.create!(fournisseur: "MAXI",
                                               price: 987,
                                               format: "1000G",
                                               description: subCategory_category_produit_viande.id,
                                               diabetic: false,
                                               category_id: category_produit_viande.id,
                                               store_id:    maxi_mascouche_store.id)

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