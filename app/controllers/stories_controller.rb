class StoriesController < ApplicationController


  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.save
    redirect_to story_path(@story)
  end

  def story_params
    params.require(:story).permit(:title ,:content, :genre, :synopsis, photos: [])
  end
end
