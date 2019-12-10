# class MealTypesController < ApplicationController

#     def index
#         meal_types = MealType.all 
#         render json: meal_types
#     end

#     def show 
#         meal_type = MealType.find(params[:id])
#         render json: meal_type
#     end

#     def create
#        meal_type = MealType.create(meal_type_params)
#         render json:meal_type
#     end

#     private 

#     def meal_type_params
#         params.permit(:type )
#     end
# end
