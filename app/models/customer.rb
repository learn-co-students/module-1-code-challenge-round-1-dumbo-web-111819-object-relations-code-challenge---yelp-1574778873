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

  def reviews
    Review.all.select { |review| review.customer == self } #added a helper method for #restaurants and #num_reviews
  end

  def restaurants
    reviews.map { |review| review.restaurant }.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    reviews.count
  end

  def self.find_by_name(input)
    matching_review = Review.all.find { |review| review.customer.full_name == input }
    matching_review.customer
  end

  def self.find_all_by_given_name(input)
    matching_review = Review.all.select { |review| review.customer.given_name == input}
    matching_review.map { |review| review.customer }.uniq
  end

end