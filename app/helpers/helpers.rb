helpers do 

	def sign_up
		@user = User.create(params[:user])
		authenticate
	end

	def sign_in
		@user = User.find_by_username(params[:user][:username])
		if @user
			authenticate
		else
			redirect '/sign_in'
		end
	end

	def authenticate
    @user = User.find_by_username(params[:user][:username])
    if @user.password == params[:user][:password]
      session[:user_id] = @user.id
      redirect '/protected/user_profile/' + @user.id.to_s
    else
      redirect '/sign_in'
    end
  end

  def create_road
  	Road.create(user_id: session[:user_id], story_id: params[:story_id], content: params[:content])
  end

  def make_favorite
  	Favorite.create(user_id: session[:user_id], story_id: params[:story_id])
  end

  def username
    User.find_by_id(session[:user_id]).username
  end
end