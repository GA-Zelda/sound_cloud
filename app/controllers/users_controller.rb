class UsersController < ApplicationController
  def new()
    #user = User.new
  end

  def create()
    user = User.create({name: params[:name], email: params[:email], password: params[:password], location: params[:location], favorite_artist: params[:favorite_artist]})
    redirect_to '/'
  end

  def show()
    binding.pry
  end

  def edit()
    binding.pry
  end

  def update()
    binding.pry
  end


  private
  def authorize_user!(user)
    unless user.id == session[:user_id]
      render(text: 'Unauthorized', status: 401) and return true
    end

    return false
  end

end
