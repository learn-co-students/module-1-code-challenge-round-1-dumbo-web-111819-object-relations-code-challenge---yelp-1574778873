class Review

  attr_reader :customer, :restaurant, :rating

  @@all = []

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating

    @@all << self
  end

  def self.all
    @@all
  end


end















# - `Review#initialize`
#   - Reviews should be initialized with a customer, restaurant, and a rating (a number)
# - `Review.all`
#   - returns all of the reviews
#
# - `Review#customer`
#   - returns the customer object for that review
#   - Once a review is created, should not be able to change the customer
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, should not be able to change the restaurant
# - `Review#rating`
#   - returns the rating for a restaurant.
