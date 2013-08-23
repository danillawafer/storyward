get '/protected/user_profile/:user_id' do
	@user = User.find_by_id(session[:user_id])
	@stories = @user.stories.sort! { |x,y| y.created_at <=> x.created_at }.take(5)
	@roads = @user.roads.sort! { |x,y| y.created_at <=> x.created_at }.take(5)
	@favorites = @user.favorites.sort! { |x,y| y.created_at <=> x.created_at }.take(5)
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