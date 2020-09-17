class UsersController < ApplicationController

    # signup form
    def new
        @user = User.new
    end
    
    # pass in name/password/password_confirmation
    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            flash[:alert] = "saved"
            session[:user_id] = @user.id # stores the unique id that this user is saved with into user_id
            redirect_to '/' # redirect back home page
        else
            redirect_to :signup
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
