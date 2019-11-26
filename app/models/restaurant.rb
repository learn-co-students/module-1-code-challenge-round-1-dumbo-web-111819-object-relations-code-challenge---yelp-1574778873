class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end
  def reviews
    restaurant_review = []
    restaurant_review = Review.all.select {|review| review.restaurant == self}
    restaurant_review
  end
  #get a list of reviews for the restaurant
  # get an arrray of customers that did the review
  #uniq it
  def customers
    unique_customer_list = []
    unique_customer_list = self.reviews.map{|review|review.customer}
    unique_customer_list.uniq
  end

end
