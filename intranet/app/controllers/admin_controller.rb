class AdminController < ApplicationController
  def login
	if request.post?
		user = User.authenticate(params[:name], params[:password])
		if user
			session[:user_id] = user.id
			session[:user_level] = user.level
			session[:user_name] = user.name
			uri = session[:original_uri]
			session[:original_uri] = nil
			redirect_to(uri || { :controller => 'sites', :action => "index"} )
		else
			flash.now[:notice] = "Invalid user/password combination"
		end
	end
  end

  def logout
	session[:user_id] = nil
	flash[:notice] = "Logged out"
	redirect_to(:action => "login")
  end

  def index
	@total_sites = Site.count
  end

end
