class ReviewsController < ApplicationController
before_action :set_building
  
  def index
    render json:{
      reviews: @building.review.order(id: :desc)
    }
  end

  def create
    review = Review.new(review_params)
    review.building = @building

    if review.save
      render json: {review: review}
    else
      render json: {
        message: "Review could not be created",
        errors: review.errors
      }
    end
  end

  def update
    review = @building.reviews.find(params[:id])

    if review.update(review_params)
      render json:{review: review}
    else
      render json: {
        message: "Review could not be edited.",
        errors: review.errors
      }
    end
  end

  def destroy
    review = @building.reviews.find(params[:id])

    if review.destroy 
      render json: { review: nil }
    else 
      render json: { message: "Review could not be destroyed."}
    end
  end

  private

  def set_building
    @building = Building.find(params[:building_id])
  end

  def review_params
    params.require(:review).permit(:name, :description, :rating, :building_id)
  end
  
end
