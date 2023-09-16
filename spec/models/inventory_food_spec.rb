require 'rails_helper'

RSpec.describe InventoryFood, type: :model do
  describe 'associations' do
    it { should belong_to(:inventory) }
    it { should belong_to(:food) }
  end

  describe 'validations' do
    it { should validate_presence_of(:quantity) }
  end
end
