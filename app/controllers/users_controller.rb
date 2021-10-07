class UsersController < ApplicationController

  def follows
  user = User.find(params[:id])
  @users = user.following_user.page(params[:page]).per(3).reverse_order
  end

  def followers
  user = User.find(params[:id])
  @users = user.follower_user.page(params[:page]).per(3).reverse_order
  end

  def new
    @book = Book.new
  end


  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.where(user_id: @user.id)

  end


  def new
     @user = User.new
  end

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end

   def edit
      @user = User.find(params[:id])
    if @user == current_user
        render "edit"
    else
      redirect_to user_path(current_user)
    end
   end


   def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice]="You have updated user successfully."
      redirect_to user_path(current_user)
    else
      render :edit
    end
   end

    private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
