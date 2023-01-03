class GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[ show update destroy ]

  # GET /greetings
  def index
    @greetings = Greeting.all.sample

    render json: @greetings
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greeting
      @greeting = Greeting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def greeting_params
      params.require(:greeting).permit(:message)
    end
end
