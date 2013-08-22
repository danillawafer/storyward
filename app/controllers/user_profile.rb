get '/user_profile/:user_id' do
	erb :user_profile
end

get '/user_favorites/:user_id' do
	erb :user_favorites
end

get '/user_stories/:user_id' do
	erb :user_stories
end

get '/user_roads/:user_id' do
	erb :user_roads
end