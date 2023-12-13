class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @stories = Story.all
    if user_signed_in?
      @user = User.find(current_user.id)
    end
    @categories = Category.all
  end

  def index
    @stories = Story.all
  end

end
