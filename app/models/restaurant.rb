class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def reviews
    # Loop Review.all and match name 
    # returns an array of all reviews for that restaurant 
      Review.all.select do |reviews_instances|
          reviews_instances.restaurant == self
  end 
  end 

  def customers
    result = Review.all.select do |review_instances|
      review_instances.restaurant == self
    end

    result.uniq 
  end 

  def average_star_rating
      # Get sum of rating for this particular restaurant
      # Divide by num of reviews. 

      num_of_views = self.reviews.size 
      total_rating = 0
      self.reviews.map do |reviews_instances|
          total_rating += reviews_instances.rating
      end 
      average = total_rating / num_of_views
  end 


  def self.all 
    @@all 
  end 


end # End of class 
