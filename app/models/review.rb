class Review < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :customer

    def full_review
        binding.pry
        "#{Restaurant.first.name} by #{Customer.first.first_name} + #{Customer.first.last_name}: #{Review.first.star_rating} stars."
    end
end