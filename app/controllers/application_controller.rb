class ApplicationController < ActionController::API

  private

  def load_user
    @user = User.find_by_token(request.headers[:HTTP_AUTH_TOKEN]) 
    render status: 401 if @user.nil?
  end
end
