require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# restaurant initialize(name)
  spanish = Restaurant.new("Spanish")
  french = Restaurant.new("French")
  middle_eastern = Restaurant.new("Middle Eastern")
  chinese = Restaurant.new("Chinese")
  
# customer initialize(given_name, family_name)
  valentine = Customer.new("Valentine", "Maillard")
  ben = Customer.new("Ben", "King")
  alice = Customer.new("Alice", "Wonderland")

# review initialize (customer, restaurant, rating)
  good = Review.new(valentine, french, 10)
  bad = Review.new(alice, spanish, 2)
  ok = Review.new(ben, middle_eastern, 5)
  better = Review.new(valentine, chinese, 7)
  worst = Review.new(valentine, french, 10)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line