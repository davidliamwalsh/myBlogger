FactoryBot.define do
  factory :comment do
    name { Faker::Name.name }
    body { Faker::Lorem.paragraph(5) }
  end
end