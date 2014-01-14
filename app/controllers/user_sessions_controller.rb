class UserSessionsController < ApplicationController
  before_action :require_login, :only => [:destroy]

  def new
    @user = User.new
  end

  def create
    remember_me = true

    if @user = login(params[:email], params[:password], remember_me)
      redirect_back_or_to edit_user_path(current_user), success: 'You logged in.'
    else
      flash.now[:alert] = "The email and password don't match."
      render action: 'new'
    end
  end

  def destroy
    logout
    flash[:success] = 'You logged out.'
    redirect_to :login
  end
end
