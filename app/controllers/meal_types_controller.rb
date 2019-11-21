class MealTypesController < ApplicationController

    def index
        meal_types = MealType.all 
        render json: meal_types
    end

    def show 
        meal_type = MealType.find(params[:id])
        render json: meal_type
    end
end
