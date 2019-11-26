class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review_instance|review_instance.restaurant==self}
  end

  def customers
    self.reviews.uniq
  end

  def average_star_rating
    sum=self.reviews.map {|each_instance| each_instance.rating}.sum
    count=self.reviews.map {|each_instance| each_instance.rating}.count
    sum.to_f/count
  end


end
