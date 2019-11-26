class Review
    @@all = []
    attr_reader :customer, :restaurant, :rating
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end
    def rating (restaurant)
        Review.all.find {|review|review.restaurant == restaurant}
    end
    def restaurant
        @restaurant
    end

    def self.all
        @@all
    end

    def customer 
        @customer
    end

  
end