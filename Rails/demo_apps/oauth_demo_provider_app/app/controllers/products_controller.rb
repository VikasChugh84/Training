class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end

  def show
  end

  def about
  end

  def create
  end

  def new
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

  def product_image
  end

  private
    def product_params_permit
      params.require(:product).permit(:name, :code, :style, :fabric, 
      :price, :category, :supplier_price, :supplier_id)
    end

end
