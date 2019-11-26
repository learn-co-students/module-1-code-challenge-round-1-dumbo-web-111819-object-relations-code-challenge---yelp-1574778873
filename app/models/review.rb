# Review is written by customer for a restarurant. 

class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []

    # Takes
    # Customer object
    # Restaurant object

    def initialize(customer, restaurant,rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self 
    end 

    def self.all
        @@all 
    end  
end # End of class 