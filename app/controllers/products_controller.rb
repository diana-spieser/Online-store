class ProductsController < ApplicationController
  before_action :authenticate_user!, :only => [:new]
  before_action :set_product, only: [ :edit, :show, :update, :destroy ]
  before_action :set_categories, only: [:new, :create, :edit]
  # before_action :set_category, only: [ :new, :create]

  def index
    @products = Product.all
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.category = @category
    @product.user_id = current_user.id

    @product.category_id = params[:product][:category].to_i
    if @product.save
      redirect_to product_path, notice: 'Product has been created sucessfully!'
    else
      render :new, status: :unprocessable_entity

    end
  end

  def show
    @contact = Contact.new
    @products = Product.all
    @category = Category.new
    @product = Product.find(params[:id])


  end

  def edit
  end

  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_categories
    @categories = Category.all.order(:name)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :quantity,:category_id, :photos, photos: [])
  end
end
