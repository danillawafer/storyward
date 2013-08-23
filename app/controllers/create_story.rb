get '/protected/create_story' do
	erb :write_or_upload
end

get '/protected/write_story' do
	erb :show_writing_template
end

post '/protected/create_story' do 
	"Create the new story, whether written or uploaded"
	redirect '/user_profile/' + session[:user_id]
end