class RatingsController < ApplicationController
	
	def index
		@ratings = Rating.all
	end

	def show
		@rating = Rating.find(params[:id])
	end

	def new
	end

	def create
		@rating = Rating.new(rating_params)
 
	  @rating.save
	  redirect_to @rating
	end

	private
	  def rating_params
	    params.require(:rating).permit(:first_name, :last_name, :university, :comments)
	  end

end
