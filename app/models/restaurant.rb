class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    all_ratings = reviews.map { |review| review.rating }
    sum = 0
    sum_of_ratings = all_ratings.each {|n| sum += n}
    sum/all_ratings.count
  end

end