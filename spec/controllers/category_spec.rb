require_relative '../spec_helper'

describe 'categories' do
  let(:category) {Category.create(mood: "Happy")}

  it 'should display all categories' do
    get '/categories/all'
    expect(last_response).to be_ok
  end

  it 'should display by category_id' do
    get '/categories/:category_id'
    expect(last_response).to be_ok
  end
end

    