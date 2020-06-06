FactoryBot.define do
  factory :user do
    
  end

  factory :submission do
    url { "www.example.com" }
    excerpt  { "An excerpt of text to be checked." }
  end
end