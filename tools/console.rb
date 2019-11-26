require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

annie = Customer.new("Annie", "Zheng")
annie2 = Customer.new("Annie", "Kim")
estee = Customer.new("Estee", "Lalonde")
billy = Customer.new("Billy", "John")

pizza = Restaurant.new("Prince Street Pizza")
sushi = Restaurant.new("Sake Sushi Buffet")
lox = Restaurant.new("Russ & Daughters")
harb = Restaurant.new("Harbs")

re1 = Review.new(annie, pizza, 4)
re2 = Review.new(estee, sushi, 5)
re3 = Review.new(billy, lox, 3)
re4 = Review.new(annie, lox, 4)
re5 = Review.new(billy, lox, 5)
re6 = Review.new(estee, pizza, 2)
re7 = Review.new(estee, harb, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line