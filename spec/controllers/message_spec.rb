require_relative '../spec_helper'

class MessageSpec
  describe 'message' do
  let (:message) {User.Message.create(user: 'Kevin', category: 'Happy')}

  before do
    user
    message
  end

  it 'should respond to /messages/new' do
    get '/messages/new'
    expect(last_response).to be_ok
    expect(last_response.body).to include 'Create Message'
  end
end
