class UsersController < ApplicationController
    
    def show
        
        @user = current_user
        
    end
    
    private
        def user_params 
            params.require(:user).permit(:nombre, :email)
        end

    private
        def article_params 
            params.require(:article).permit(:title, :text)
        end
end