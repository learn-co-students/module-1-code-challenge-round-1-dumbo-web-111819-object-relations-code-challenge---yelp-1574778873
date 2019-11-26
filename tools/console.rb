require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jane = Customer.new("Jane", "Foster")
ann = Customer.new("Ann", "Ryan")
amy = Customer.new("Amy", "Adams")

chilis = Restaurant.new("Chili's")
patron = Restaurant.new("Patron")
og = Restaurant.new("Olive Garden")
bww = Restaurant.new("Buffalo Wild Wings")

review1 = jane.add_review(jane, chilis, 5)
review2 = jane.add_review(ann, og, 2)
review3 = jane.add_review(amy, patron, 9)
review4 = jane.add_review(amy, bww, 7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line