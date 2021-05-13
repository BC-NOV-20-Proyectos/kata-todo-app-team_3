# frozen_string_literal: true

class MainController < ApplicationController
  before_action :set_task, only: %i[ destroy ]

  def index
    @tasks = Task.where(user_id: current_user.id)
  end

  def edit
    
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_task 
    @task = Task.find(params[:id])
  end
  
end
