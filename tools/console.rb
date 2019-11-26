require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# initialize(given_name, family_name)
c1 = Customer.new("alex", "Suthamm")
c2 = Customer.new("Jim", "Jones")

# initialize(name)
rt1 = Restaurant.new("SanVito")
rt2 = Restaurant.new("Pam Thai")


# initialize(customer, restaurant, rating)
rv1 = Review.new(c2,rt1,4)
rv2 = Review.new(c1,rt2,1)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line