class DailyIntakesController < ApplicationController
    def index
        daily_intakes = DailyIntake.all 
        render json: daily_intakes
    end

    def show 
        daily_intake = DailyIntake.find(params[:id])
        render json: daily_intake
    end
end
