require_relative 'spec_helper'

describe 'Message' do
  let(:user) {User.create(email: "jeff@dbc.com", password: "phase2")}

  it 'brings you to a form to create a new message' do
    get '/messages/new'
    expect(last_response).to be_ok
  end

  it 'should create a message' do
    post '/create_message', params={title: "Testing a post is different", content: "I really find it challenging, I like it..."}
    expect(last_response).to be_redirect
    follow_redirect!
    #Params wont exists in this context 
    expect(last_response.body).to_include(params[:title])

  end
end


