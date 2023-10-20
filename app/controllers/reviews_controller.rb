class ReviewsController < ApplicationController
  def index
    query = Review.where(restaurant_id: params[:restaurant_id]).all

    @restaurant = Restaurant.find_by(id: params[:restaurant_id]).decorate
    @reviews = ReviewDecorator.decorate_collection(query)
  end

  def new
  end

  def create

  end
end
