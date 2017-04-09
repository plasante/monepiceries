User.create!(name:  "Pierre Lasante",
             email: "pierre.lasante@videotron.ca",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

User.create!(name:  "Carole Spenard",
             email: "cspenard@videotron.ca",
             password:              "123456",
             password_confirmation: "123456")
             
User.create!(name:  "Juby Spenard",
             email: "jspenard@videotron.ca",
             password:              "123456",
             password_confirmation: "123456")

97.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end