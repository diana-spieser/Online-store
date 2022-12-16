class CategoriesController < ApplicationController
  before_action :set_category, only: [ :edit, :show, :update, :destroy ]
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user = current_user
    if @category.save
      redirect_to categories_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @category.destroy
    redirect_to categories_path, status: :see_other
  end

  private

  def category_params
  params.require(:category).permit(:name, :desciption, :photo)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
