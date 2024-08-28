FactoryBot.define do
  factory :task do
    name { Faker::Lorem.sentence(word_count: 3) }
    details { Faker::Lorem.paragraph(sentence_count: 2) }
  end
end
