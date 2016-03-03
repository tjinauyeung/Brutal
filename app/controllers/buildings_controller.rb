class BuildingsController < ApplicationController

  def index
    render json:{
      buildings: Building.order(id: :desc)
    }
  end

  def show
    building = Building.find(params[:id])
    render json: {
  	  building: building,
      reviews: building.reviews
    }
  end

  def create
    if building = Building.create(building_params)
      render json: { building: building }
    else
      render json: {
        message: "Object could not be created",
        errors: building.errors
      }
    end
  end

  def update
    building = Building.find(params[:id])

    if building.update(building_params)
      render json: { building: building }
    else
      render json: {
        message:"Object could not be edited",
        errors: building.errors
      }
    end
  end

  def destroy
    building = Building.find(params[:id])

    if building.destroy
      render json: { building: nil }
    else  
      render json: { message: "Object could not be destroyed" }
    end
  end

  private
  
  def building_params
    params.require(:building).permit(:name, :location, :build_year, :architect, :rating)
  end

end
