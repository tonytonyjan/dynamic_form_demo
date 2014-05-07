# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :field do
    form nil
    name "MyString"
    type ""
    required false
    multiple false
    options "MyString"
  end
end
