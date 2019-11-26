class Customer
  attr_accessor :given_name, :family_name
  @@all=[]

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

  def restaurants
    Review.all.select {|review_instance| review_instance.customer==self}.uniq
  end

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    Review.all.select {|review_instance| review_instance.customer==self}.count
  end
  def self.find_by_name(full_name)
    first_name=full_name.split[0]
    given_name=full_name.split[1]
    customer_reviews=self.all.select{|review_instance| review_instance.customer==first_name}

  end

  def self.find_all_by_given_name(name)
    first_name=full_name.split[0]
    given_name=full_name.split[1]
    customer_reviews=self.all.select {|review_instance| review_instance.customer==given_name}
  
  end

end
