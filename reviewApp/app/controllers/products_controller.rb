class ProductsController < ApplicationController
  def index
    @products=Product.all
    
  end

  def show
    @product=Product.find(params[:id])
    @reviews=Review.where(:productID => @product.id)
    @profiles=Profile.all
       
    @profilePhoto=Review.joins(:profile).where(:productID => @product.id)
  end

  def new
    @product=Product.new
  end

  def create
    @product=Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def search
    @products = if params[:term]
      Product.where('name LIKE ?', "%#{params[:term]}")
    else
      Product.all
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :brand, :avgCost, :category, :releaseDate, :description, :productPhoto)
    end

end
