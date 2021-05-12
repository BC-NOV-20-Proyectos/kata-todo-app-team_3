# frozen_string_literal: true

class MainController < ApplicationController

  def index
    if signed_in?
    else
      redirect_to sign_in_path
    end
  end

  def edit
  end
  
end
