require_relative '../spec_helper'

describe 'users' do
  let(:user) { User.create(email: "jeff@dbc.com", password: "phase2")}
  let(:category) {Category.create(mood: "Happy")}

  before do
    user
    category
  end

  it 'should respond to the login page' do
    get '/login'
    expect(last_response).to be_ok
  end

  it 'should respond to the signup page' do
    get '/signup'
    expect(last_response).to be_ok
  end

  it 'should respond to the logout page' do
    get '/logout'
    expect(last_response).to be_ok
  end

  it 'should log in existing user' do
    post '/login', params={email: "jeff@dbc.com", password: "phase2"}
    expect(last_response).to be_redirect
    follow_redirect!
    puts last_response.body
    expect(last_response.body).to include 'Happy'
  end

end


