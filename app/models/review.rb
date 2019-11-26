class Review
  attr_accessor :customer, :restaurant, :rating
  @@all = []

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @@all << self
  end

  def customer
    # binding.pry

  end

  def average_star_rating
    #lost time but this was doable 
  end
 def self.all
  @@all
 end

end
