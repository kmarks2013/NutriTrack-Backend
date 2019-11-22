class AuthController < ApplicationController
    def login
        # byebug
        user = User.find_by(username: params[:username])
        if user 
            password = params[:password]
            is_authenticated = user.authenticate(password)
            # byebug 

            if is_authenticated
                render json: { token: encoded_token(user_payload(user))}

            else
                render json: {error: "You are a dead man/woman! How dare you steal my identication?"}
            end
        else  
            render json: {error: "There is no user found"}
        end 
    end
end
