get '/protected/write_road/:story_id' do 
	@story = Story.find_by_id(params[:story_id])
	erb :write_road_form
end

post '/protected/make_road/:story_id' do
	create_road
	# Makes this story a user's favorite if not already
	check_favorite		
	redirect '/public_story/' + params[:story_id].to_s
end