class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index

  end

  def tracks
  	client = SoundCloud.new(:client_id => "4bfb6af6b3fc1982ae613dbcb6f0d1d5")
  	@tracks = client.get('/tracks', :limit => 20, :order => "hotness") 
  	render :tracks
  end
end
