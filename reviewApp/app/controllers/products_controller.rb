class ProductsController < ApplicationController
  def index
    @products=Product.all
    
  end

  def show
    @product=Product.find(params[:id])
    @reviews=Review.where(:productID => @product.id)
    @profiles=Profile.all
    #@profileImage=Profile.where(author: [request.requester, request.regional_sales_mgr])
    #@profileImage=Review.includes(:profile).where(:author => :fullName)
    #@image=Review.joins(:profile).where(['author = ?', '@profiles.fullName'])
    #@image = Review.joins(:profile).where(['author = ?', :fullName => @profiles.fullName]).select("profile.*").find(params[:fullName => @profiles.fullName])
    #@profilePhoto = Review.joins('INNER JOIN profile').where('reviews.author' => @profiles.fullName) #.where("rates.rateable_id = locations.id")
    #@profilePhoto = Review.joins('INNER JOIN profiles ON profiles.fullName = reviews.author') #.where('rates.rater_id' => @user)
    #@profilePhoto=Profile.joins(:review).select('profiles.userPhoto')
    @profilePhoto=Review.joins('INNER JOIN profiles ON reviews.author = profiles.fullName').select('reviews.*,profiles.*').where(:productID => @product.id)
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
