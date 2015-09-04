class SessionsController < ApplicationController
    def new
    end

    def create
        user = Attorney.find_by(name: "Craig")
        if user && user.authenticate(params[:session][:password])
          log_in user
          redirect_to contacts_path 
        else
          flash.now[:danger] = 'Invalid password'
          render 'new'
        end
    end

    def destroy
      log_out if logged_in?
      redirect_to login_path
    end
end
