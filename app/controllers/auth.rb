get '/' do
  if session[:user_id]
    erb :user_page
  else
    erb :login
  end
end

get '/login' do
  erb :login, layout: auth_layout
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.try(:authenticate, params[:password])
    session[:user_id] = @user.id
    redirect "/categories/all"
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
  redirect '/categories/all'
end


