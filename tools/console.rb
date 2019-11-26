require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
  # Customer info given_name, family_name

  saima = Customer.new("Saima", "Rahman")
  fzee = Customer.new("fzee", "zaman")

  #restaurant info(name)

  thai = Restaurant.new("thai")
  chin = Restaurant.new("chin")


  # review info
  # attr_accessor :customer, :restaurant, :rating

  r1 = Review.new(saima, thai, 2)
  r2 = Review.new(fzee, chin, 5)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
