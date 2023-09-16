require 'rails_helper'

RSpec.describe Inventory, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:inventory_foods) }
    it { should have_many(:foods).through(:inventory_foods) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
