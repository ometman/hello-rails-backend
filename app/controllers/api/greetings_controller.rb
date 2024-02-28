class GreetingsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def random_message
        render json: Greeting.order("RANDOM()").first
    end
end