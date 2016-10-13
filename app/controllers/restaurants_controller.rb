class RestaurantsController < ApplicationController
before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:new, :edit]

  def index
    # Search
    if params[:search]
      @restaurants = Restaurant.search(params[:search]).order("created_at DESC")
    elsif params[:type].blank?
      @type_id = Type.find_by(name: params[:type]).id
      @restaurants = Restaurant.where(:type_id => @type_id).order("created_at DESC")
    else
      @restaurants = Restaurant.all.order("created_at DESC")
    end
  end

  # Displays the restaurants and its rating. Shows the average rating.
  def show
    if @restaurant.reviews.blank?
      @average_review = 0
    else
      @average_review = @restaurant.reviews.average(:rating).round(2)
    end
  end

  def new
    @restaurant = current_user.restaurants.build
    @types = Type.all.map{ |t| [t.name, t.id] }
  end

  def create
    @restaurant = current_user.restaurants.build(restaurant_params)
    @restaurant.type_id = params[:type_id]

    if @restaurant.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @types = Type.all.map{ |t| [t.name, t.id] }
  end

  def update
    @restaurant.type_id = params[:type_id]
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to root_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :type_id, :restaurant_img)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
