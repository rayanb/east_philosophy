get '/users/:id' do
  @categories = Category.all
  erb :user_page
end
