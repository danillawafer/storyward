get '/protected/user_profile/:user_id' do
	@user = User.find_by_id(session[:user_id])
	erb :user_profile
end

## May use routes below later if lists get too long

# get 'protected/user_favorites/:user_id' do
# 	erb :user_favorites
# end

# get 'protected/user_stories/:user_id' do
# 	erb :user_stories
# end

# get 'protected/user_roads/:user_id' do
# 	erb :user_roads
# end