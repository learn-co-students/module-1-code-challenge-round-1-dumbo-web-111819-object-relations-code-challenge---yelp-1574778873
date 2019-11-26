class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end

  def reviews(restaurant_name)
 
  end

  def customers(customer_name)
    
  end

  def average_star_rating
    #each do?
  end

end
