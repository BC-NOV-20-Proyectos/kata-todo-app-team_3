# frozen_string_literal: true

class MainController < ApplicationController
  
  def index
    if !current_user
      redirect_to sign_in_path
    else
      @tasks = Task.where(user_id: current_user.id)
    end
  end
end
