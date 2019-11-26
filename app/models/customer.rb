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
end

def restaurants

end

def add_review(restaurant, rating)
    Restaurant.new(self, restaurant, rating)
end

def num_reviews
  # .count?
end

def self.find_by_name(name)
    Customer.all.find do |name_int|
      customer.name == name
end

def self.find_all_by_give_name

end
