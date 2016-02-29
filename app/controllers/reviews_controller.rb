class ReviewsController < ApplicationController
before_action :set_building
  
  def index
    render json:{
      reviews: @building.review.order(id: :desc)
    }
  end

  def create
    review = Review.new(review_params)
    @building = review.building

    if review.save
      render json: {review: review}
    else
      render json: {
        message: "Sorry, review could not be created",
        errors: review.errors
      }
    end
  end

  def update
    if review = @building.reviews.find(params[:id])
    render json:{review: review.update(task_params)}
    else
      render json: {
        message:"Sorry, review could not be edited",
        errors: review.errors
      }
    end
  end

  def destroy
    review = @building.reviews.find(params[:id])
    task.destroy
    render json: { destroyed: true }
  end
  private

  def set_building
    @building = Building.find(params[:building_id])
  end

  def review_params
    params.require(:review).permit(:name, :description, :building_id)
  end

end
