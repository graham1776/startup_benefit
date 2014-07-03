# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reccomendation do
    benefit nil
    name "MyText"
    copy "MyText"
    url "MyString"
    favicon_url "MyString"
  end
end
