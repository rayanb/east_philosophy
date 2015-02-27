get '/' do
  erb :login
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.try(:authenticate, params[:password])
    session[:user_id] = @user.id
    redirect "/user_page/#{@user.id}"
  else
   redirect '/'
  end
end

get '/signup' do
  erb :signup
end

post '/signup' do
  User.create(params)
  redirect '/login'
end

get '/user_page/:id' do
  erb :user_page
end
