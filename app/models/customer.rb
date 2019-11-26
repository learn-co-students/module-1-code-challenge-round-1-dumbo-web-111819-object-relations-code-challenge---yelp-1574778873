class Customer
  attr_accessor :given_name, :family_name
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
  def restaurants
    reviewed_array = []
    reviewed_array = Review.all.select {|review|review.customer == self}
    
    restaurant_array = []
    restaurant_array = reviewed_array.select {|review| review.restaurant}
    restaurant_array.uniq
  end
  def add_review(restaurant, rating)
    review = Review.new(self,restaurant,rating)
    @@all.push(review)
  end
  def num_reviews
    num_of_review = []
    num_of_review = Review.all.select {|review| review.customer == self}
    num_of_review.count
  end
  def self.find_by_name(name)

    Customer.all.find {|customer| customer.given_name && customer.family_name == name}
  end
  def self.find_by_given_name(given_name)  
    Customer.all.find do |customer|
       
        customer.given_name == given_name
    end
  end



end



