class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def customers 
    cus_arr= self.reviews.map do |review|
      review.customer
    end
    cus_arr.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    total_review = self.reviews.length
    rating_arr = self.reviews.map do |review|
      review.rating
    end
    rating_arr.sum/total_review
  end

end

### D O N E ###
# #### Restaurant

# - `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string
# - `Restaurant#name`
#   - returns the restaurant's name
#   - should not be able to change after the restaurant is created
# #### Restaurant

# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# # - `Restaurant#customers`
# #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
#   - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings