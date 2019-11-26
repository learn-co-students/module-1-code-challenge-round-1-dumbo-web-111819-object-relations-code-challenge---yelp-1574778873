require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1=Customer.new("John","Doe")
c2=Customer.new("Peter","Pan")
c3=Customer.new("Jack","Smith")
c4=Customer.new("Mark","Lee")
c5=Customer.new("Mark","Lee")

Res1=Restaurant.new("Thai Chick")
Res2=Restaurant.new("Pasta Cheese")
Res3=Restaurant.new("Soup Kitchen")
Res4=Restaurant.new("Soup Kitchen")

rev1=Review.new(c1,Res1,8)
rev2=Review.new(c2,Res2,4)
rev3=Review.new(c3,Res3,5)
rev4=Review.new(c4,Res4,6)
rev5=Review.new(c5,Res1,5)
rev6=Review.new(c1,Res2,7)
rev7=Review.new(c2,Res3,5)
rev8=Review.new(c3,Res4,8)
rev9=Review.new(c4,Res1,5)
rev10=Review.new(c5,Res2,9)

c5.add_review(rev6,6)








# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line