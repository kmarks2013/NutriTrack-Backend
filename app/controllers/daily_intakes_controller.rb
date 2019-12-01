class DailyIntakesController < ApplicationController
    def index
        daily_intakes = DailyIntake.all 
        render json: daily_intakes
    end

    def show 
        daily_intake = DailyIntake.find(params[:id])
        render json: daily_intake
    end

    def create
        daily_intake = DailyIntake.create(daily_intake_params)
        render json: daily_intake
    end

    def update
        daily_intake = DailyIntake.find(params[:id])
        daily_intake.update(update_params)
        render json: daily_intake
    end


    def destroy
        daily_intake = DailyIntake.find(params[:id])
        daily_intake.destroy
    end

    private 

    def daily_intake_params
        params.permit(:user_id, :food_id, :meal_type, :serving )
    end

    def update_params
        params.permit(:meal_type, :serving)
    end
end
