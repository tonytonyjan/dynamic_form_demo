# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_form, :class => 'Admin::Form' do
    title "MyString"
    description "MyText"
  end
end
