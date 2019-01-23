class Api::UsersController < ApiController
	
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
	
end
