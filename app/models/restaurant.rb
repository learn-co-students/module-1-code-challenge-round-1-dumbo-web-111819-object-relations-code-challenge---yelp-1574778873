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
    Review.all.select{|review_instance| review_instance.restaurant == self}
    #  returns an array of all reviews for that restaurant
  end

  def customers
    self.reviews.map{|review_instance| review_instance.customer}.uniq
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  end

  def average_star_rating
    rating_sum = self.reviews.sum {|review_instance| review_instance.rating}
    rating_sum / self.reviews.count
    # - returns the average star rating for a restaurant based on its reviews
  end

end




