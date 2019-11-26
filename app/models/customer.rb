class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def given_name
    @givenn_name
  end

  def family_name
    @family_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    Review.all.map { |restaurant| review.customer == customer.full }
  end

  def add_review(customer,restaurant, rating)
      Review.new(self, restaurant, rating)
  end

  def self.all
    @@all
  end

  def num_reviews
    Review.all.count { |customer| review.customer == customer.full_name}
  end

  def self.find_by_name(name)
    self.all.find { |name| customer.name}
  end

  def self.find_by_given_name(name)
    self.all.find { |full_name| customer.full_name}
  end

end