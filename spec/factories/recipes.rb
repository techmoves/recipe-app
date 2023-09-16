require 'faker'

FactoryBot.define do
  factory :recipe do
    name { Faker::Name.name }
    preparation_time { '1 hour' }
    cooking_time { '1 hour' }
    public { true }
    description { 'My Description' }
  end
end
