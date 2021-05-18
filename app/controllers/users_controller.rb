class UsersController < ApplicationController
    before_action :auth_user?

    def show
        @user = current_user
    end

    private
    
    def auth_user?
        unless User.find(params[:id]) == current_user
            redirect_to events_path, alert: "T'es pas au bon endroit !"
        end
    end
end
