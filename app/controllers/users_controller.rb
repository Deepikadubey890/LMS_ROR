class UsersController < ApplicationController

    def index
        @user = User.all
        render json: @user, status: 200
      end
    
      def show
      end
    
      def create
        @user = User.new(user_params)
        if @user 
          @user.save
          render json: @user, status: 200
        else
          render json: { error: "not created"}
        end
      end
    
      def update
      end
    
      def destroy
      end
    
      private 
      def user_params
      params.require(:user).permit([
        :name,
        :email,
        :password,
      
      ])
      end
end   