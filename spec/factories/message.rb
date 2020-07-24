FactoryBot.define do
  factory :message do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    body { Faker::Lorem.paragraph(5) }
  end
end