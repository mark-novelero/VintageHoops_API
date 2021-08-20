class ApplicationController < ActionController::Base

    skip_before_action :verify_authenticity_token

    def encode_token(data) #make sure data is a hash
        JWT.encode(data, "Flatiron", "HS256") 
    end
end
