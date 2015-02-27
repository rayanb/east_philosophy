get '/messages/new' do
  @categories = Category.all
  erb :'message/create_message'
end

post '/create_message' do
  new_message = Message.create(params)
  redirect "/messages/#{new_message.id}"
end

get '/messages/:id' do
  @message = Message.find(params[:id])
  erb :'message/show'
end

get 'categories/:category_id/messages/all' do
end