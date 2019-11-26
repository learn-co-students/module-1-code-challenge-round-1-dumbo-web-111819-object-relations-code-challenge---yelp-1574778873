class Review
  attr_accessor  :rating
  attr_reader :customer, :restaurant
  @@all = []
  def initialize(customer,restaraunt,rating)
      @customer = customer 
      @restaurant = restaraunt
      @rating = rating 
      @@all << self 
  end
  def self.all 
    @@all 
  end 
  
end 


    #  Just find customer in self
    # find the review that equals self
    # and return customer
    # Review.all.first.customer to reach customer
    # use find
