get '/categories/all' do
  @categories = Category.all
  erb :user_page
end

get '/categories/:category_id' do
  @category = Category.find(params[:category_id])
  @messages = @category.messages
  erb :'category/show'
end