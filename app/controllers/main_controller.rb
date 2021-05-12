# frozen_string_literal: true

class MainController < ApplicationController

  def index
    @tasks = Task.where(user_id: current_user.id)
  end

  def edit
    
  end
  
end
