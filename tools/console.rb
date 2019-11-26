require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new('Yuho','Ye')
c2 = Customer.new('Marco','Ho')
c3 = Customer.new('Jack','Xie')
c4 = Customer.new('Jack', 'Lu')

r1 = Restaurant.new('BoBoMilk')
r2 = Restaurant.new('Banana')
r3 = Restaurant.new('Tasty')

review1 = Review.new(c1,r3,4.0)
review2 = Review.new(c1,r2,3.0)
review3 = Review.new(c2,r3,5.0)
review4 = Review.new(c3,r3,3.5)
review5 = Review.new(c1,r1,4.7)
review5 = Review.new(c1,r3,5.0)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line