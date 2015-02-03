class UsersController < ApplicationController
  def new()
    #user = User.new
  end

  def create()
    binding.pry
  end

  def edit()
  end

  def update()
  end


  private
  def authorize_user!(user)
    unless user.id == session[:user_id]
      render(text: 'Unauthorized', status: 401) and return true
    end

    return false
  end

end
