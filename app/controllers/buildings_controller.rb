class BuildingsController < ApplicationController

  def index
    render json:{
      buildings: Building.order(id: :asc)
    }
  end

  def create
    if building = Building.create(project_params)
      render json:{building: building}
    else
      render json: {
        message: "Sorry, building could not be created",
        errors: building.errors
      }
    end
  end

  def update
    if building = Building.find(params[:id])
      render json:{building: building.update(building_params)}
    else
      render json: {
        message:"Sorry, project could not be edited",
        errors: building.errors
      }
    end
  end

  def destroy
    building = Building.find(params[:id])
    building.destroy
      render json: { destroyed: true }
  end

  def show
    building = Building.find(params[:id])
      render json:{building: building}
  end

  private
  def building_params
    params.require(:building).permit(:name, :location, :build_year, :architect, :rating)
  end

end
