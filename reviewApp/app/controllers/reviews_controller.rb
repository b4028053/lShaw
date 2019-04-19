class ReviewsController < ApplicationController
  def index
    @reviews=Review.all
  end

  def show
    @review=Review.find(params[:id])
  end

  def new
     @review=Review.new
     @name = params[:name]
     @id = params[:id]
  end

  def create
    @review=Review.new(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render 'new'
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
       redirect_to products_path
    else
       render 'edit'
    end
  end

  def edit
    @review=Review.find(params[:id])
  end

  def destroy
    @review=Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private
    def review_params
      params.require(:review).permit(:author, :productID, :productRating, :reviewContent, :reviewDate, :profile_id)
    end

end
