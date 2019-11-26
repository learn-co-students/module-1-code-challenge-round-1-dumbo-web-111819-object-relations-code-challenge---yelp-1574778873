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
    Review.all.map do |review_instance|
      review_instance.restaurants
    end.uniq
  end


  def add_review(restaurant, rating)
      Review.new(self, restaurant, rating)
  end

  def num_reviews
    rev = Review.all.select do |review_instance|
       review_instance.customer == self
    end.count
  end

  def self.find_by_name(name)
    Customer.all.find do |customer_instance|
      customer_instance.full_name == name
    end
  end

  def self.find_by_all_given_name(name)
    Customer.all.select do |customer_instance|
        customer_instance.given_name == name
    end
  end
end
