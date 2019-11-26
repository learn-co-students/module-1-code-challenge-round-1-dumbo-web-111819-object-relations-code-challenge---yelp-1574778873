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
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.uniq
    end
  end

  def average_star_rating
    all_reviews = reviews.map do |review|
      review.rating
    end
    all_reviews.sum / 
  end


end #end of class



#### TO DO #####
# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
#   - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings

##### DONE #####
# - `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string
# - `Restaurant#name`
#   - returns the restaurant's name
#   - should not be able to change after the restaurant is created
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant