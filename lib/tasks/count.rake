namespace :count  do
  desc 'Count the number of records in each model'
  task :models => :environment do
    puts " "
    puts 'The number of Companies is ' + Company.count.to_s
    puts " "
    puts 'The number of Customers is ' + Customer.count.to_s
    puts " "
    puts 'The number of Orders is ' + Order.count.to_s
    puts " "
end
end
