# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

end