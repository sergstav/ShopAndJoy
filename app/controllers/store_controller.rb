class StoreController < ApplicationController

  skip_before_filter :authorize

  def index
    @products = Product.order(:title)
    @cart = current_cart
    @products = Product.paginate(page: params[:page], per_page: 5)
  end
end
