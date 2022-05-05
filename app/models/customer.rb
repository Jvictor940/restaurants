class Customer < ActiveRecord::Base
    has_many :reviews 
    has_many :restaurants, through: :reviews

    def full_name
        #binding.pry
        "#{Customer.first.first_name} + #{Customer.first.last_name}"
    end

    def favorite_restaurant
        #binding.pry
        Review.all.order(:star_rating).first
    end

    def add_review(restaurant, rating)
        Restaurant.create(star_rating: star_rating, review: review, customer: self)
    end

    def delete_reviews(restaurant)
        Restaurant.last.destroy_all(reviews) ##no time!!
    end
end