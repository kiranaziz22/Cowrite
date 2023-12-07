class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_stories = @user.stories
    @user_collabs = @user.collabs
  end

end
