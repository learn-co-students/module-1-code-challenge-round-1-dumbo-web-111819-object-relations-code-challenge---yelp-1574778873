class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    # used map to return a new array of all the reviews that matched the specific
    # restaurant (self).
    Review.all.map do |review|
      review.rating == self
    end
  end

  def customers
    # returns a unique array of all customers (Review.all)
    # who have reviewed the specific resturant instance.
    uniq_customer_array = []
    Review.all.map do |customer|
  uniq_customer_array << customer.rating == self
    end
    uniq_customer_array.uniq
  end
  # binding.pry
end



# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
#   - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings

















# - `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string
# - `Restaurant#name`
#   - returns the restaurant's name
#   - should not be able to change after the restaurant is created
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
