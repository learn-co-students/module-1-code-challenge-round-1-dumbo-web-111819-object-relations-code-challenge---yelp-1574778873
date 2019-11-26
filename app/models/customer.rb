class Customer
  attr_accessor :given_name, :family_name, :total_view 
  @@all = [] 
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @total_view = 0 
    @@all << self 
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
      restaurant_array = [] 
      result = Review.all.select do |review_instances|
          review_instances.customer == self 
      end 

      result.each do |instances|
          restaurant_array << instances.restaurant
      end 
      restaurant_array.uniq 

  end 

  def customers
    #  Returns a **unique** list of all customers who have reviewed a particular restaurant.
      uniq_array = [] 
      result = Review.all.select do |reviews|
            reviews.customer.full_name == self.full_name
      end 
      
      result.each do |instance|
          uniq_array << instance.customer
      end 
      uniq_array.uniq 
  end 


  def add_review(restaurant, rating)
      Review.new(self,restaurant,rating)
      self.total_view += 1 
  end 

  def num_reviews
      # Instance variable to keep track of views to this particular customer. 
      self.total_view
  end 

  def self.find_by_name(name)
      # Loop through Customers.all and match. 
      # Use find

      Customer.all.find do |customers_instances|
          customers_instances.full_name == name 
      end 
  end 

  def self.find_all_by_given_name(given_name)
      # Match just the given_name(firstname)
      # Select , can be more than 1 

      Customer.all.select do |customers_instances|
          customers_instances.given_name == given_name
      end 
  end

  def self.all 
      @@all 
  end 
end # End of class 
