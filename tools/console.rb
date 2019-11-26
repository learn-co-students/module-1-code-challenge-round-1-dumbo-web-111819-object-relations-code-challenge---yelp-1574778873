require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("James", "Brown")
c2 = Customer.new("Jerry", "Springer")
c3 = Customer.new("Georger", "Forman")
c4 = Customer.new("Derek", "Jeter")
c5 = Customer.new("50", "Cent")


r1 = Restaurant.new("Le Manoir")
r2 = Restaurant.new("Ruby Tuesday")
r3 = Restaurant.new("Chipotle")
r4 = Restaurant.new("Southwestern Grill")
r5 = Restaurant.new("Chateaubriant")

rev1 = Review.new(c2, r1, 9)
rev2 = Review.new(c1, r3, 5)
rev3 = Review.new(c5, r3, 10)
rev4 = Review.new(c3, r5, 8)
rev5 = Review.new(c3, r2, 7)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line