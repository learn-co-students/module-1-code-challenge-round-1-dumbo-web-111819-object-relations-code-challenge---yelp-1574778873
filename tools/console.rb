require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


r1 = Restaurant.new("Pizza Palace")
r2 = Restaurant.new("Pirate Booty")

c1 = Customer.new("Rianna", "Cleary")
c2 = Customer.new("Jack", "Sparrow")

review1 = Review.new(c1, r1, 9)
review2 = Review.new(c2, r2, 2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
