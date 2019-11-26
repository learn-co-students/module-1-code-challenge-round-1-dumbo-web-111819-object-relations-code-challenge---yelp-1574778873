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

  end

  def add_review(resturant, rating)
    # create a new review (Review.new).

    Review.new(self, resturant, rating)
  end

  def num_reviews
#   - Returns the total number of reviews that a customer has authored
# iterate through Review.all to FIND the total num of reviews a customer wrote.
  total = 0
  Review.all.find do |num|
    total += num.rating
    end
    total
  end

  def self.find_all_by_name(name)
    # use find loop to find the first customer whose full name matches.
     Customer.all.find do |name|
       self.full_name == name
    # binding.pry
    end
  end

  def self.find_all_by_given_name(name)
    # use map to return an array that has all of the customers with
    # the same name.
    Customer.all.map do |name|
      self.given_name == name
    end
  end

  def resturants

  end 
end


# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
















# - `Customer#initialize`
#   - Customer should be initialized with a given name and a family name, both strings
# (i.e., first and last name, like George Washington)"
# - `Customer#given_name`
#   - returns the customer's given name
#   - should be able to change after the customer is created
# - `Customer#family_name`
#   - returns the customer's family name
#   - should be able to change after the customer is created
# - `Customer.all`
#   - returns **all** of the customer instances
# - `Customer#full_name`
#   - returns the full name of the customer, with the given name and the family name concatenated, Western style.
# - `Customer#add_review(restaurant, rating)`
#   - given a **restaurant object** and a star rating (as an integer),
#   creates a new review and associates it with that customer and restaurant.
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_given_name(name)`
#   - given a string of a given name, returns an **array** containing all customers with that given name
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
