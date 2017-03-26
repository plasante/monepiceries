class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if (User.count < 1000)
      if (@user.save)
        log_in @user
        flash[:success] = "Welcome to the Grocery App!"
        redirect_to @user
      else
        render 'new'
      end
    else
      flash[:danger] = "Number of users exceeded"
      redirect_to root_path
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
