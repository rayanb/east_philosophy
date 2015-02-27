get '/login' do
  erb :login
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.try(:authenticate, params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
   redirect '/login'
  end
end

get '/signup' do
  erb :signup
end

get '/logout' do
  session[:user_id] = nil
  erb :login
end

post '/signup' do
  user = User.create(params)
  session[:user_id] = user.id
  redirect '/login'
end

