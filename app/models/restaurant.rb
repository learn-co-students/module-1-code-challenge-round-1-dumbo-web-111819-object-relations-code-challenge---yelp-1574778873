class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self}
  end

  def customers

    self.reviews.select { |review| review.restaurant == self }
  end
end


# To do 
# Restaurant#reviews
# returns an array of all reviews for that restaurant [rv_of_rt1, rv_of_rt2]

# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.


# Done
# Restaurant#initialize
# Restaurants should be initialized with a name, as a string
# -
# Restaurant#name
# returns the restaurant's name
# should not be able to change after the restaurant is created



