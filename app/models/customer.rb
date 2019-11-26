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

  def restaurants
    # binding.pry
    array = Review.all.map{|ele|
      ele.restaurant
    }
    array.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    # binding.pry
  end
  def self.find_by_name(full_name)
    # binding.pry
    #here I wanted to call the full_name
    #method and check with the variable givengi

  end
  def self.find_all_by_given_name(given_name)
    Customer.all.find{|name|
      name.full_name == given_name
    }
  end


  def self.all
    @@all
  end
end
