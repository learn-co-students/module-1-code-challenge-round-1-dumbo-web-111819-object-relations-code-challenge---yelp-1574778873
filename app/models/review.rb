class Review

    attr_accessor :customer : restaurant :rating :rating

    @@all = self

    def initialize (customer, restaurant, rating)
        @customer  = customer
        @restaurnat  = restaurant
        @rating = rating
     @@all << self

    end

    def self.all
        @@all
    end

    def review_customer
        customer.review = self
    end

    def review_restaurant
        restaurant.review = self
    end

end