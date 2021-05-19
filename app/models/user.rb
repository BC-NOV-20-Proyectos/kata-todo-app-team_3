# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User
  has_many :tasks
  
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize: "100x100"
  end
end
