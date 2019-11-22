class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.valid?
         password = params[:password]
            render json: { token: encoded_token(user_payload(password))}
        else
            render json: { errors: user.errors.full_messages}
        end
    end

    private 

    def user_params
        params.permit(:username, :password, :name, :gender, :image, :height, :age, :goal_calorie)
    end

end
