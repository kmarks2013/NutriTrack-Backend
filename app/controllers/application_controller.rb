class ApplicationController < ActionController::API

    def user_payload(user)
       { user_id: user.id } 
    end

    def encoded_token(payload)
        JWT.encode(payload, "secretkey", "HS256")
    end
end
