class Review
    attr_reader :rating, :restaurant, :customer

    @@all = []

    def intitialize(restaurant, customer, rating)
        @restaurant = restaurant   
        @customer = customer
        @rating = rating
        @@all << self
    end

    def review(restaurant_name)
        Review.all.select do |restaurant_instance|
            restaurant_name == self
        end
    end

    def customer(customer_name)
        Review.all.select do |customer_instance|
            customer_instance == self
        end
    end

    def restaurant(restaurant_name)
        Review.all.select do |restaurant_instance|
            restaurant_instance == self
        end
    end
end