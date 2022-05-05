class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def self.fanciest
        Review.all.order(:star_rating).first
    end

    def all_reviews
        ["Review for #{Restaurant.last.name} by #{insert customer's full name}: {insert review star_rating} stars.",
        "Review for {insert restaurant name} by {insert customer's full name}: {insert review star_rating} stars.",]
    end
end

