require 'rails_helper'

RSpec.describe 'PublicRecipes', type: :request do
  before(:each) do
    user = User.create(name: 'test', email: 'scacd@ffs.d', password: 'password')
    user.recipes.create(
      name: 'wqv',
      preparation_time: '1 hour',
      cooking_time: '1 hour',
      public: true,
      description: 'My Description'
    )
    login_as(user, scope: :user)
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/public_recipes/index'
      expect(response).to have_http_status(:success)
    end
  end
end
