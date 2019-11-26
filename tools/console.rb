require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Eric", "Cave")
c2 = Customer.new("Jerry","Rice")
c3 = Customer.new("Rod", "Woodson")

re1 = Restaurant.new("Five Guys")
re2 = Restaurant.new("Wendy's")
re3 = Restaurant.new("Burger")

rev1 = Review.new(c1, re1, 10)
rev2 = Review.new(c2, re2, 8)
rev3 = Review.new(c3, re3, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line