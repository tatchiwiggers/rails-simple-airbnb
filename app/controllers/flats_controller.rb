class FlatsController < ApplicationController
  before_action :find_flat, only: [ :show, :edit, :update, :destroy ]

  def home
    if params[:query].present?
      @query = params[:query]
      @flats = Flat.where("name LIKE ?","%#{params[:query]}%")
    else
      @flats = Flat.all
    end
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    redirect_to root_path
  end

  def destroy
    @flat.destroy
    redirect_to root_path
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end
end
