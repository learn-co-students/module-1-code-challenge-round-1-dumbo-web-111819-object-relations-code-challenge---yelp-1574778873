require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


Mark = Customer.new("Mark", "Khan")
Joseph = Customer.new("Joseph", "Pyram")
Josh = Customer.new("Josh", "Huttel")

McDonalds = Restaurant.new("McDonalds")
Starbucks = Restaurant.new("Starbucks")
KFC = Restaurant.new("KFC")

Mark_review = review.new(Mark,McDonalds,5)
Joseph_review = review.new(Joseph,Starbucks,4)
Josh_review = review.new(Josh,KFC,3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line