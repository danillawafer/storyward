get '/browse_stories' do
	@stories = Story.all.sort! { |x,y| y.created_at <=> x.created_at }
	erb :browse_stories
end

get '/tag_stories/:tag_id' do
	@tag = Tag.find_by_id(params[:tag_id])
	@stories = @tag.stories
	erb :show_tag_stories
end

# Ajaxify to allow sorting by newest/hottest
# Ajaxify to allow sort by tags
