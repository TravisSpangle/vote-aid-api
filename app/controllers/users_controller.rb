class UsersController < ApplicationController
  def create
    params = user_params
    @token = User.login(first: params[:first], last: params[:last], email: params[:email], state: params[:state])
    render json: { token: @token }
  end

  def user_params
    params.require(:user).permit(:first, :last, :email, :state)
  end
end
