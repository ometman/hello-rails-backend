class Api::GreetingsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def random_message
        greeting = Greeting.order("RANDOM()").first
        render json: greeting.message
    end
end