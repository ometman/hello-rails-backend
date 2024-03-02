# Controller responsible for handling greetings API endpoints.
# This controller provides functionality to random greeting.
module Api
  class GreetingsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def random
      greeting = Greeting.order('RANDOM()').first
      render json: greeting.message
    end
  end
end
