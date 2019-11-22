class AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        password = params[:password]
        is_authenticated = user.authenticate(password)

        if is_authenticated
            render json: { token: encoded_token(user_payload(password))}

        else
            render json: {error: "You are a dead man/woman! How dare you steal my identication?"}
        end
    end
end
