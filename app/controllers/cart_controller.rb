class CartController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @render_cart = false
  end

  def add_to_cart
    # ... add the item to the cart ...
    render json: { cart_count: @cart.orderables.sum(:quantity) }
  end

  def update_cart_after_payment
    @cart.orderables.each do |orderable|
      orderable.update_attributes(quantity: 0)
    end
    @cart.update_attributes(total: 0)
  end

  def recap
    Orderable.find_by(id: params[:id])
    @carts = @cart.total
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables
  end

  def add
    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(product_id: @product.id)
    if current_orderable && quantity > 0
      current_orderable.update(quantity:)
    elsif quantity <= 0
      current_orderable.destroy
    else
      @cart.orderables.create(product: @product, quantity:)
    end

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [turbo_stream.replace('cart',
                                                  partial: 'cart/cart',
                                                  locals: { cart: @cart }),
                              turbo_stream.replace(@product)]
      end
    end
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace('cart',
                                                  partial: 'cart/cart',
                                                  locals: { cart: @cart })
      end
    end
  end
end
