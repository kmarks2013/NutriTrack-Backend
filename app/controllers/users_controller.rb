class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end
    def create
        user = User.create(user_params)
        if user.valid?
            render json: { token: encoded_token(user_payload(user))}
        else
            render json: { errors: user.errors.full_messages}
        end
    end

    def profile 
        token = request.headers["Authorization"].split(" ").last
       if token
            decoded_token = JWT.decode(token, 'secretkey', true, {algorithm: 'HS256'})
            user_id = decoded_token[0]["user_id"]
            user = User.find(user_id)
            if user 
                render json: user
            else
                render json: {error: 'There is no user found'}
            end
         end
    end

    private 

    def user_params
        params.permit(:username, :password, :name, :gender, :image, :height, :age, :goal_calorie, :weight)
    end

end
