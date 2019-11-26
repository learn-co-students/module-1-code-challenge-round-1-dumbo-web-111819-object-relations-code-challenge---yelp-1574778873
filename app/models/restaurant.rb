class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all <<self
  end

  def self.all
    @@all
  end

  def restaurant_review
    restaurant.all.review do |review]
      restaurant.review = self
    end

    def restaurant_customer
      customer_list =restaurant.all.review do |review|
        customer.restaurant =self
      end
      customer_list.uniq
    end

end
