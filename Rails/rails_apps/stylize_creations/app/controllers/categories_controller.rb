class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
    respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
  end
end
