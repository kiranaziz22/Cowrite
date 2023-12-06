class CollabsController < ApplicationController
  before_action :set_story, only: %i[new create]
  def new
    @collab = Collab.new
  end

  def create
    @story = Story.find(params[:story_id])
    @collab = Collab.new(collab_params)
    @collab.story = @story
    @collab.user = current_user
    @collab.save
    redirect_to story_path(@story)
  end

  def collab_params
    params.require(:collab).permit(:rich_content, :story_id)
  end

  def set_story
    @story = Story.find(params[:story_id])
  end
end
