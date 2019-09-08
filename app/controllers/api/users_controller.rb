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

  # POST /users
  def create
      @user = User.create!(permited_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
  end

  private
  def permited_params
    params.require(:user).permit(:name, :auth_sub)
  end


end
