require 'faker'

FactoryBot.define do
  factory :inventory do
    name { Faker::Name.name }
    user_id { 1 }
  end
end
