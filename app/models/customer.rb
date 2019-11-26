class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
     print "#{given_name} + #{family_name}"
  end

  def self.all
    @@all
  end

  def customer_restaurants 
    restaurant_review = customer.review.all do |review|
      customer.restaurant = self
    end
    restaurant_review.uniq
  end

  def customer_add_review (restaurant, rating)
    review.new (self, restaurant, rating)
  end

   def customer_num_reviews
    customers_review =customer.review .all do |review|
      customer.review = self
    end
    customer_review.count
  end

  def self.find_by_name 
      customer.all.name.find do |name|
        customer.name == self
      end

      def self.find_all_by_given_name
      end




end
