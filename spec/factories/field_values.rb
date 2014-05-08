# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :field_value do
    attendee nil
    field nil
    value "MyText"
  end
end
