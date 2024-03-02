# frozen_string_literal: true

# Greetings controller under Api
module Api
  class GreetingsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def random
      greeting = Greeting.order('RANDOM()').first
      render json: greeting.message
    end
  end
end
