# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1.times do |y|
  User.create(name: 'Guest',
              username: 'guest',
              email: 'guest@guest.com',
              remote_avatar_url: 'http://robohash.org/sitsequiquia.png?size=300x300',
              admin: false )
end


4.times do |a|
  1.times do|b|
    user = User.ids.shuffle.first
    Company.create(name: Faker::Name.name,
    bio: Faker::Lorem.sentence(3),
    remote_image_url: "http://lorempixel.com/400/200/",
    user_id: user )
   end
end

  Company.all.each do |c|
    2.times do |d|
      company = Company.ids.shuffle.first
      Customer.create(name: Faker::Name.name,
      order: Faker::Number.number(4),
      company_id: c.id)
    end
end


 Customer.all.each do |e|
      2.times do |f|
      customer = Customer.ids.shuffle.first
      Order.create(number: Faker::Number.number(4),
      quantity: Faker::Number.number(1),
      item: Faker::Commerce.department(2),
      customer_id: e.id)
    end
end
