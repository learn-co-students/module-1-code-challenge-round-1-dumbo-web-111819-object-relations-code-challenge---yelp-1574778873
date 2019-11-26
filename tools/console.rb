require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("don", "johnson")
customer2 = Customer.new("sam", "logan")
customer3 = Customer.new("don", "rickles")

restaurant1 = Restaurant.new("Chez Momo")
restaurant2 = Restaurant.new("Trash Bucket")

review1 = Review.new(customer1, restaurant1, 3)
review2 = Review.new(customer2, restaurant2, 1)
review3 = Review.new(customer2, restaurant1, 5)
review4 = Review.new(customer3, restaurant2, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line