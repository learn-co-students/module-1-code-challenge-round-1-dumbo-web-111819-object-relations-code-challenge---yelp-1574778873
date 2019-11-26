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

  def self.find_by_name(name)
    #   - given a string of a **full name**, returns the 
    # **first customer** whose full name matches
      self.all.find {|customer_instance| customer_instance.full_name == name}
      
  end

  def self.find_all_by_given_name(name)
    #   - given a string of a given name, returns an **array** 
    # containing all customers with that given name
    self.all.select {|customer_instance| customer_instance.full_name == name}
  end

  def reviews #helper
    Review.all.select{|review_instance| review_instance.customer == self}
    #selects all reviews associated with a particular customer
  end

  def restaurants
    self.reviews.map{|review_instance| review_instance.restaurant}.uniq
    # - Returns a **unique** array of all restaurants a customer has reviewed
  end

  def add_review(restaurant,rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
    # - Returns the total number of reviews that a customer has authored
  end
  
end


