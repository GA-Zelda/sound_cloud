class SessionController < ApplicationController

  # create a new session
  # POST '/session'
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      redirect_to "/"
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end

end
