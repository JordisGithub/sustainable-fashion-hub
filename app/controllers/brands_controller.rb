class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :update, :destroy, :add_item]
                                  
  before_action :authorize_request, only: [:create, :update, :destroy]

  # GET /brands
  def index
    @brands = Brand.all

    render json: @brands
  end
  
  # def import
  #   Brand.my_import(params[:file])
  #   redirect_to root_url, notice: "successfuly Imported All Items!!!"
  # end

  # GET /brands/1
  def show
    # render json: @brand
    render json: @brand, include: :items
  end

  # POST /brands
  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      render json: @brand, status: :created, location: @brand
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brands/1
  def update
    if @brand.update(brand_params)
      render json: @brand
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brands/1
  def destroy
    @brand.destroy
  end

  def add_item
    @item = Item.find(params[:item_id])
    @brand.items << @item
    render json: @food, include: :items
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brand_params
      params.require(:brand).permit(:name, :description, :sustainability_rating, :sustainability_rating_description, :planet_rating, :planet_rating_details, :people_rating, :people_rating_details, :animals_rating, :animals_rating_details)
    end
end
