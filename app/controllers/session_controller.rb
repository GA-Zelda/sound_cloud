class SessionController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      #redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    reset_session
    #redirect_to '/'
  end

end
