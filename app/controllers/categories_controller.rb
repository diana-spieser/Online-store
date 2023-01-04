class CategoriesController < ApplicationController
  before_action :authenticate_user!, :only => [:new]
  before_action :set_category, only: [ :edit, :show, :update, :destroy ]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.new
  end

  def edit
  end

  def destroy
    @category.destroy
    redirect_to categories_path, status: :see_other
  end

  private

  def category_params
  params.require(:category).permit(:name, :description, :photo)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
