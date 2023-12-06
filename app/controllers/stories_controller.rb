class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
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
    @story.destroy
    redirect_to stories_path, status: :see_other
  end

  def story_params
    params.require(:story).permit(:title, :rich_content, :genre, :synopsis, photos: [])
  end
end
