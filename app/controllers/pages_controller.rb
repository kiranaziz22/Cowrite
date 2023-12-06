class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @stories = Story.all
    @user = User.find(current_user.id)
  end
end
