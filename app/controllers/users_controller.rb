class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end
  
  # GET /users/1
  # GET /users/1.json
  def show
  end


  def new
    @user_type = params[:user_type]
    @user = User.new
  end

	# GET /users/new
	def new1
    @user = User.new
	end

  def new2
    @user = User.new
  end
 
  # POST /users
  # POST /users.json
	def create
		@user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
	end


  # GET /users/1/edit
	def edit
	end

  #PUT /users/1
	def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
	end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user_id = @user.id
    @user.destroy
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :last_name, :email, :genre, :birthday_year, :opinion, :organization, :password, :user_type)
    end

end