before 'protected/*' do
	unless session[:user_id]
		redirect '/'
	end
end

get '/' do
  erb :welcome
end

get '/sign_in' do 
	erb :sign_in
end

get '/sign_up' do
	erb :sign_up
end

post '/sign_up' do
	sign_up
end

post '/sign_in/session' do
	sign_in
end

get '/sign_out' do
	session.clear
	redirect '/'
end



