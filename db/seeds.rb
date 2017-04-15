User.create!(name:  "Pierre Lasante",
             email: "pierre.lasante@videotron.ca",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Carole Spenard",
             email: "cspenard@videotron.ca",
             password:              "123456",
             password_confirmation: "123456",
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Juby Spenard",
             email: "jspenard@videotron.ca",
             password:              "123456",
             password_confirmation: "123456",
             activated: true,
             activated_at: Time.zone.now)

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