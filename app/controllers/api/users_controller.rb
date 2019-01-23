class Api::UsersController < ApiController

  before_action :authenticate_api_user!, only: [:me]
	
	def index
		@users = User.all

		render json: @users
	end

	def show
    @user = User.find(params[:id])
 
    respond_to do |format|
      format.html
      format.json { render :json => @user }
    end
  end

  def me
    render json: current_api_user
  end
	
end
