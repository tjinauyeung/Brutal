class ArchitectsController < ApplicationController

	def index
    render json:{
      architects: Architect.order(id: :asc)
    }
  end

  def show
    architect = Architect.find(params[:id])
    render json: {
  	  architect: architect
    }
  end

  def create
    if architect = Architect.create(architect_params)
      render json: { architect: architect }
    else
      render json: {
        message: "Object could not be created",
        errors: architect.errors
      }
    end
  end

  private
  
  def architect_params
    params.require(:architect).permit(:name, :description, :image)
  end

end
