# frozen_string_literal: true

class MainController < ApplicationController
  before_action :set_task, only: %i[ destroy ]

  def index
    @tasks = Task.where(user_id: current_user.id)
  end

end
