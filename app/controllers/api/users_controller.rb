class Api::UsersController < ApplicationController
	
	def index
		@users = User.all

		render json: @users
	end

	# def show
  #   @user = User.find(params[:id])
 
  #   respond_to do |format|
  #     format.html
  #     format.json { render json: generate_json(@user) }
  #   end
  # end
	
end
