class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)

    if @apartment.save
      redirect_to @apartment
    else
      render :new
    end
  end

  private
  def apartment_params
    params.require(:apartment).permit(:apartment_name, :location, :description, :price, :review, :room_size, :ac, :tv, :wifi, :cctv, :house_keeping)
  end
end
