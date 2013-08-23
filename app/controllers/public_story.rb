get '/public_story/:story_id' do 
	@story = Story.find_by_id(params[:story_id])
	@roads = @story.roads.sort! { |x,y| (y.up_votes - y.down_votes) <=> (x.up_votes - x.down_votes) }
	erb :public_story_page
end