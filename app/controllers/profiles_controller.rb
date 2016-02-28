class ProfilesController < ApplicationController
	helper_method :sort_column, :sort_direction

	def index
		@profiles = Profile.order(sort_column + " " + sort_direction)
	end

	def show
    @profile = Profile.find(params[:id])
  end

	def new
	end

	def create
		@profile = Profile.new(profile_params)
 
	  @profile.save
	  redirect_to @profile
	end

	private
		def profile_params
			params.require(:profile).permit(:first_name, :last_name, :university, :description)
		end

		def sort_column
	  	params[:sort] || "last_name"
	  end

	  def sort_direction
	  	params[:direction] || "asc"
	  end

end
