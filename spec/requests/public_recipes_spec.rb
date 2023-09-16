require 'rails_helper'

RSpec.describe 'PublicRecipes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/public_recipes/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/public_recipes/show'
      expect(response).to have_http_status(:success)
    end
  end
end
