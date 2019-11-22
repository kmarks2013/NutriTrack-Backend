class ApplicationController < ActionController::API

    def user_payload(password)
       { password: password } 
    end

    def encoded_token(payload)
        JWT.encode(payload, "secretkey", "HS256")
    end
end
