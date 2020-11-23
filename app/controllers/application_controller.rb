class ApplicationController < ActionController::Base
    # Need a way to find out how to do this without hard coding the first user
    
    def current_user
        User.first  
    end
end