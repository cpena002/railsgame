class UsersController < ApplicationController
  def index
  end

  def register
    @user = User.new #TODO: Create user in database with user_name
    @user.name = params[:user_name]
    @user.email = params[:user_email]

    if @user.save
      cookies[:user_id] = @user.id
      render text: "thank you #{@user.name}. You have sucessfully registered. Your email is #{@user.email}"
    else
    render text: "Could not save user"
    end
  end
end
