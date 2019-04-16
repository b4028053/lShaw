class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def smartphone

  	def index
  		@products=Product.all
  	end

  end

  def tablet
  end

  def smartTV
  end

end
