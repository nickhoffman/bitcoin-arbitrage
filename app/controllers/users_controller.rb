class UsersController < ApplicationController
  before_action :require_login
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      redirect_to edit_user_path(@user), notice: 'The user was updated successfully.'
    else
      render action: 'edit'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :phone, :password, :password_confirmation, :notify)
  end

  def authorize_user
    return if current_user == @user

    redirect_to edit_user_path(current_user), :alert => "You can't do that."
  end
end
