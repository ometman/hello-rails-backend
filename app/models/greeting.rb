# frozen_string_literal: true

# app/models/greeting.rb
class Greeting < ApplicationRecord
  # Validations
  validates :message, presence: true

  def formatted_timestamp
    created_at.strftime('%B %d, %Y %H:%M')
  end
end
