get '/categories/:category_id' do
  @category = Category.find(params[:category_id])
  @messages = @category.messages
  erb :'category/show'
end