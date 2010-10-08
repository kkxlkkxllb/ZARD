class UsersController < ApplicationController   
    def new
      @title = "Register"
      @user = User.new
    end

    def create
      @user = User.new(params[:user])
      if @user.save
        
        redirect_back_or_default root_path
      else
        redirect_to register_path
      end
    end

    
    
end
