class RatingsController < ApplicationController
	helper_method :sort_column, :sort_direction

	def index
		@ratings = Rating.order(sort_column + " " + sort_direction)
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
	    params.require(:rating).permit(:first_name, :last_name, :university, :score, :comments)
	  end

	  def sort_column
	  	params[:sort] || "score"
	  end

	  def sort_direction
	  	params[:direction] || "desc"
	  end

end
