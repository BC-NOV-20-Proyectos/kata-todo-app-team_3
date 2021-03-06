# frozen_string_literal: true

class UsersController < Clearance::UsersController
  before_action :set_user, only: %i[edit update show]

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: "user was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

  end 
  
  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :lastname, :email, :password, :avatar)
  end
end
