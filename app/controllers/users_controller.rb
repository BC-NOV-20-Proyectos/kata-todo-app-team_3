# frozen_string_literal: true

class UsersController < Clearance::UsersController
  private

  def user_params
    params.require(:user).permit(:name, :lastname, :email, :password)
  end
end
