class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    User.connection_check
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json :show, status: :created, location: @user }
      else
        format.html { render action :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


  private :user_params
end
