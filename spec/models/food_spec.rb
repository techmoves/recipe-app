require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'associations' do
    it { should have_many(:inventory_foods).dependent(:destroy) }
    it { should have_many(:inventories).through(:inventory_foods) }
    it { should have_many(:recipe_foods).dependent(:destroy) }
    it { should have_many(:recipes).through(:recipe_foods) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:measurement_unit) }
    it { should validate_presence_of(:price) }
  end
end
