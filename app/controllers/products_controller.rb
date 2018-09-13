class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def add_to_cart
    if session[:cart_id].blank?
    cart = Cart.create(status: "pending")
    session[:cart_id] = cart.id
    else
      cart = Cart.find(session[:cart_id])
    end
    product = Product.find(params[:id])
    cart.cartships.create(product_id: product.id, quantity: 1)
    redirect_to cart
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
