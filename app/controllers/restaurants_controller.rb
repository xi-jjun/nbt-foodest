class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  def index
    query = Restaurant.order(id: :desc)
    query = query.where(name: params[:name]) if params[:name].present?

    @restaurants = RestaurantDecorator.decorate_collection(query)
  end
end
