require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


mohammed = Customer.new("Mohammed","Shaikh")
baruch = Customer.new("Baruch","Philips")
jo = Customer.new("Joseph","pyram")

mc_donald = Restaurant.new("McDonald's")
red_lobster = Restaurant.new("Red Lobster")
wendy = Restaurant.new("wendy")

good = Review.new(jo,mc_donald,8)
average = Review.new(baruch, wendy, 6)
bad = Review.new(mohammed, red_lobster, 2)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line