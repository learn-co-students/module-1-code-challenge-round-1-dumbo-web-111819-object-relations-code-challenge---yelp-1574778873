class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    Review.all.select { |review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self,restaurant,rating)
  end
end


# To do:
# Customer#restaurants
# Returns a unique array of all restaurants a customer has reviewed

# Customer#add_review(restaurant, rating)
# given a restaurant object and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.


# ----------------
# Done:
# Customer#initialize
# Customer should be initialized with a given name and family name, both strings 
# (i.e., first and last name, like George Washington)"

# Customer#given_name
# returns the customer's given name
# should be able to change after the customer is created

# Customer#family_name
# returns the customer's family name
# should be able to change after the customer is created

# Customer#full_name
# returns the full name of the customer, with the given name and the family name concatenated, Western style.

# Customer.all
# returns all of the customer instances