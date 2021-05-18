# frozen_string_literal: true

class MainController < ApplicationController
  def index
    if !current_user
      redirect_to sign_in_path
    else
      @tasks = Task.where(user_id: current_user.id)
    end
  end

  def generate_pdf
    if !current_user
      redirect_to sign_in_path
    else
      @tasks = Task.where(user_id: current_user.id)
      respond_to do |format|
        format.html
        format.json
        format.pdf { render template: 'main/report', pdf: "Tasks" }
      end
    end
  end

  def generate_csv
    @tasks = Task.where(user_id: current_user.id)

    respond_to do |format|
      format.html
      format.csv { send_data @tasks.to_csv, filename: "tasks-#{Date.today}.csv" }
    end
  end

end
