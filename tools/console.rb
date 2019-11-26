require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new('food place')
r2 = Restaurant.new('taco house')
r3 = Restaurant.new('chipotle')
r4 = Restaurant.new('mcdonalds')

c1 = Customer.new('Jon','smith')
c2 = Customer.new('ray','shine')
c3 = Customer.new('Jane','doe')
c4 = Customer.new('fart','sniffer')
c5 = Customer.new('Jane','doe')


w1 = Review.new(c1,r1,7)
w1 = Review.new(c1,r1,6)
w1 = Review.new(c1,r1,3)
w1 = Review.new(c5,r3,8)
w1 = Review.new(c5,r2,3)
w1 = Review.new(c1,r4,1)
w1 = Review.new(c4,r3,4)
w1 = Review.new(c2,r1,9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line