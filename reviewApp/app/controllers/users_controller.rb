class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
       redirect_to static_pages_home_path, notice:
       "Welcome #{@user.userid}!"
    else
       render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to root_path
    else
       render 'edit'
    end
  end

  def edit
    @user=User.find(params[:id])
  end

  def destroy
  end

   private
    def user_params
      params.require(:user).permit(:userid, :email, :password, :password_confirmation)
    end
end
