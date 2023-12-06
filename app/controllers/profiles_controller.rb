class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @user = User.find(params[:id])
  end

end
