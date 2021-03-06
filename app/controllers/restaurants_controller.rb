class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restuarants
  def index
    @restaurants = Restaurant.all
  end

  # GET restauarants by category
  def japanese
    @restaurants = Restaurant.where(category: 'Japanese')
  end

  def italian
    @restaurants = Restaurant.where(category: 'Italian')
  end

  def french
    @restaurants = Restaurant.where(category: 'French')
  end

  def belgian
    @restaurants = Restaurant.where(category: 'Belgian')
  end

  def chinese
    @restaurants = Restaurant.where(category: 'Chinese')
  end

  # GET /restuarants/1
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restuarants/1/edit
  def edit
  end

  # POST /restuarants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created, bro.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated, homie.'
    else
      render :edit
    end
  end

  # DELETE /restuarants/1
  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed with glee'
  end

  private
    # Use callbacks to share common setup or constraints between actions
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  #Only allow a trusted parameter 'white list'
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end
