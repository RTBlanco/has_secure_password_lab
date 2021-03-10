class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      # binding.pry
      session[:user_id] = @user.id
    end
  end 
end