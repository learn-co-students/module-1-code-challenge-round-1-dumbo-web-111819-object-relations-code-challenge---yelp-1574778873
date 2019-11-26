require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
jack = Customer.new('Jack','Bauer')
tom = Customer.new('Tom','Brady')
gronk = Customer.new('Rob','Gronkowski')

buncho = Restaurant.new('BunchoBagels')
izzys = Restaurant.new('Izzys Smokehouse')
one80 = Restaurant.new('One80 Pizza')

excellent = Review.new(tom,izzys,90)
super_good = Review.new(gronk,izzys,87)
gross = Review.new(tom,buncho,24)
better_now = Review.new(tom,buncho,76)

tom.add_review(one80,65)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line