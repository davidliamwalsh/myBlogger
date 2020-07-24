FactoryBot.define do
  factory :article do
    image { {io: File.open("#{Rails.root}/spec/fixtures/files/github.png"), filename: "github.png" } }
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph(5) }
  end

  trait :with_comments do
    transient do
      amount { 1 }
    end

    after(:create) do |article, evaluator|
      create_list(:comment, evaluator.amount, article: article)
    end
  end
end