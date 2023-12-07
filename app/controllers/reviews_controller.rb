class ReviewsController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @review = Review.new
  end

  def create
    @story = set_story
    @review = Review.new(review_params)
    @review.story = @story
    @review.user = current_user
    if @review.save
      redirect_to story_path(@story), notice: "Review Successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_story
    @story = Story.find(params[:story_id])
  end

  def review_params
    params.require(:review).permit(:comment)
  end

end
