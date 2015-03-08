# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
2.times do |a|
  Company.create(company_name: Faker::Name.name,
  company_bio: Faker::Lorem.sentence(3),
  remote_image_url: "http://lorempixel.com/400/200/")
end


  Company.all.each do |a|
    1.times do |x|
      company = Company.ids.shuffle.first
      Customer.create(customer_name: Faker::Name.name,
      customer_order: Faker::Number.number(4),
      customer_company: a.company_name,
      company_id: a.id)
    end
end


 Customer.all.each do |b|
      1.times do |z|
      customer = Customer.ids.shuffle.first
      Order.create(order_number: Faker::Number.number(4),
      order_quantity: Faker::Number.number(1),
      order_item: Faker::Commerce.department(2),
      order_customer: b.customer_name,
      customer_id: b.id)
    end
end
