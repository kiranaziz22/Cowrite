class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @collab = Collab.new
    @review = Review.new
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.user = current_user
    if
    @story.save
    redirect_to story_path(@story)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @story = Story.find(params[:id])
    if current_user == @story.user
    @story.destroy
    end
    redirect_to stories_path, status: :see_other
  end

  def story_params
    params.require(:story).permit(:title, :rich_content, :genre, :category_id, :synopsis, photos: [])
  end

  def upvote
    @story = Story.find(params[:id])
    @story.upvote_from current_user
    redirect_to story_path(@story)
  end

  def downvote
    @story = Story.find(params[:id])
    @story.downvote_from current_user
    redirect_to story_path(@story)
  end
end
