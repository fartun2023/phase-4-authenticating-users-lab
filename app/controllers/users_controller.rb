class UsersController < ApplicationController
    def show
        user_id = session[:user_id]
        user = User.find_by(id: user_id)
    
        if user
          render json: user, status: :ok
        else
          render json: { error: 'User not found' }, status: :not_found
        end
      end
    end
