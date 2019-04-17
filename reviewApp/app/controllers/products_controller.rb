class ProductsController < ApplicationController
  def index
    @products=Product.all
    
  end

  def show
    @product=Product.find(params[:id])
    @reviews=Review.where(params[:productID => @product.id])
    @profiles=Profile.all
    #@profileImage=Profile.where(author: [request.requester, request.regional_sales_mgr])
    #@profileImage=Review.includes(:profile).where(:author => :fullName)
    #@image=Review.joins(:profile).where(['author = ?', '@profiles.fullName'])
    @image = Review.joins(:profile).where(['author = ?', :fullName => @profiles.fullName]).select("profile.*").find(params[:fullName => @profiles.fullName])
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

  private
    def product_params
      params.require(:product).permit(:name, :brand, :avgCost, :category, :releaseDate, :description, :productPhoto)
    end

end
