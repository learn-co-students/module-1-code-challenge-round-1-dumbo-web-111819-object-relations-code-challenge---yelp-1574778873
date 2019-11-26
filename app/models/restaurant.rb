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

    def reviews
      Review.all.find_all {|review| review.restaurant == self}
  # find the restaurant in Review and return associated reviews
    end 

     def customers
      customer_array = []
      Review.all.map do |review|
        if review.restaurant == self 
        customer_array << review.customer
        end 
      end 
     customer_array.uniq
     end 
    #   Logic: 
    #  find all the customers for a restaurant 
    #  Go through the reviews find the restaurant that matches the instance variable 
    #  then push the customer who wrote it onto an array and return the array
end
