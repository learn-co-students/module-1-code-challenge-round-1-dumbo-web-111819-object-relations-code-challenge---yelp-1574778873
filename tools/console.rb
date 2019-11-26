require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Ajani", "Queeley")
c2 = Customer.new("Jumanne", "Queeley")

r1 = Restaurant.new('Cantina\'s')
r2 = Restaurant.new('Harlem Public')
r3 = Restaurant.new('Dumbo Taco')

view1 = Review.new('Cantina\'s','Ajani Queeley', 9)
view2 = Review.new('Harlem Public', 'Ajani Queeeley', 7)
view3 = Review.new('Dumbo Taco', 'Jumanne Queeley', 4)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line