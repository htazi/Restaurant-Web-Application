class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index,:show,:edit, :update]
  before_action :correct_user,   only: [:show,:edit, :update]

  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end 
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'Welcome to the J-H-W Resturant'
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def index

    if params && params[:search]

      name = params[:search] + '%'

      @users = User.where(['name LIKE ?', name]

         ).paginate(:page => params[:page]).order('id DESC')

    else

      @users = User.paginate(page: params[:page])

    end

    respond_to do |format|

      format.html

      format.js

    end

  end


  def search

    name = params[:search] + '%'

    @users = User.where(['name LIKE ?', name])

    respond_to do |format|

      format.html

      format.js

    end

  end


  private

    def user_params

      params.require(:user).permit(:name, :email,

         :password, :password_confirmation)

    end

    # Before filters

    # Confirms a logged-in user.

    def logged_in_user

      unless logged_in?

        store_location

        flash[:danger] = "Please log in."

        redirect_to login_url

      end

    end

    # Confirms the correct user.

    def correct_user

      @user = User.find(params[:id])

      unless @user == current_user

        flash[:danger] = "You are not authorized to do that."

        redirect_to(root_url)

      end

    end

end