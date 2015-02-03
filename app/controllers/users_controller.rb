class UsersController < ApplicationController
  
  # form to create a new user instance
  # GET 'users/new'
  def new()

  end

  # create new user and save to database
  # POST '/users'
  def create()
    user = User.create({name: params[:name], email: params[:email], password: params[:password], location: params[:location], favorite_artist: params[:favorite_artist]})
    redirect_to '/tracks'
  end

  # show user profile page
  # GET 'users/:id'
  def show
  	@user = User.find(params[:id])
  	render(:show, { locals: { user: user } })
  end

  # render edit user profile form
  # GET '/users/:id/edit'
  def edit()
  
  end

  # update user information in database
  # PUT/PATCH '/users/:id'
  def update()
    user = User.find(params[:id])
    user.location = params[:location]
    user.favorite_artist = params[:favorite_artist]
    user.save

    redirect_to "/tracks"
  end


  private

  # authorize user to CRUD app pages
  def authorize_user!(user)
    unless user.id == session[:user_id]
      render(text: 'Unauthorized', status: 401) and return true
    end

    return false
  end

end
