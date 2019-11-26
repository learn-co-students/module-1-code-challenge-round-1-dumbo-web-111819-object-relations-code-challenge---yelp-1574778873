class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

def reviews
  Review.all.select do |review_instance|
    review_instance.restaurant == self
  end
end


def average_star_rating
    rest_rating = Review.all.map do |review_instance|
        review_instance.rating.count
    end.to_f

    all_ratings = Review.all.map do |review_instance|
      review_instance
  end.count

  rest_rating/all_ratings
end


end
