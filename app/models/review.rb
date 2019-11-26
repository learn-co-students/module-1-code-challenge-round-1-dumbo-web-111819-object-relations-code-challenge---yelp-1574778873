class Review

    attr_accessor :customer, :restaurant
    attr_writer :rating

    @@all = []

  def initialize(customer, restaurant, rating)
      @customer = customer
      @restaurant = restaurant
      @rating = rating
      @@all << self
  end

  def customer
      @customer
  end

  def restaurant
      @restaurant
  end

  def rating
      @rating
  end

  def customers
     Review.all.map { |customer| review.customer}
  end


  def self.all
      @@all
  end
end