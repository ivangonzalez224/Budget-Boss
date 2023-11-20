class CategoriesController < ApplicationController
  def index
   @categories = Category.where(user_id: current_user.id)
   @current_user = current_user
  end

end