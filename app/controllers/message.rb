get '/messages/new' do
  @categories = Category.all
  erb :'message/create_message'
end

post '/create_message' do
  p "*****"
  p session
  user = User.find(session[:user_id])
  if user
    new_message = user.messages.create(params)
    redirect "/messages/#{new_message.id}"
  else
    redirect '/'
  end
end

get '/messages/random' do
  messages = Message.all
  @message = Message.find(rand(1..messages.length))
  erb :'message/show'
end

get '/messages/:id' do
  @message = Message.find(params[:id])
  erb :'message/show'
end
