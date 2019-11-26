class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Reviews.all.select{ |review| review.restaurant == restaurant.name }
  end

  # def customers
  #   reviews.map { |customer| review.customer}
  # end

  # def average_star_rating
    
  # end

  def self.all
    @@all
  end

end
