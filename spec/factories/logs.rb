FactoryBot.define do
  factory :log do
    place       {'日本'}
    description {'簡単な場所の説明'}
    point       {'オススメのポイント'}
    association :user
  end
end
