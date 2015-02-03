class UsersController < ApplicationController
  def new()
    binding.pry
    user = User.new
  end
  
  def edit()
  end

end
