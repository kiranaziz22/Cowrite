class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @stories = Story.select { |story| story.category_id == @category.id}
  end
end
