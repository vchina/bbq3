class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  
  def show
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end
  
  private

  # def set_user
  #   if params[:id] == "sign_out"
  #     sign_out(current_user) if user_signed_in?
  #     redirect_to root_path
  #   else
  #     @user = User.find(params[:id])
  #   end
  # end

  def set_user
    @user = User.find(params[:id])
  end
  
  # Пропишем, что разрешено передавать в params
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
