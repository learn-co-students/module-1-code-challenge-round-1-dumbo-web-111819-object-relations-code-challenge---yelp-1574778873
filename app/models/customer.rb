class Customer
  attr_accessor :given_name, :family_name, :restaraunts
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

    def self.all 
      @@all 
    end 

    def add_review(restaurant,rating)
      Review.new(self,restaurant,rating)
    end 

    def restaurants
      restaurant_array = []
      Review.all.map do |review|
        if review.customer == self 
        restaurant_array << review.restaurant
        end 
      end 
     restaurant_array.uniq
     end 
    #  same logic as written by customer 
end
