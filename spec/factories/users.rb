FactoryBot.define do
  factory :user do
    username              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    encrypted_password    {password}
  end
end