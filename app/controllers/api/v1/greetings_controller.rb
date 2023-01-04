class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all.sample

    render json: @greetings, status: 200
  end
end
