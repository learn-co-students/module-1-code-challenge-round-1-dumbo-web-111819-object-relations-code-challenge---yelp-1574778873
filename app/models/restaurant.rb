class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    # binding.pry
    Review.all.select{|ele|
      ele.restaurant == self
    }
  end

  def customers
    # binding.pry
    #should return array of uniq customers
    #using .uniq method on an array
    reviews = self.reviews.map{|ele|
      ele.customers
    }

    def average_star_rating
      total_review = self.reviews.count
      review_array =self.review.map{|ele|
      ele.rating}

      review_array.sum / total_review
  end

end
