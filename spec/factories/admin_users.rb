# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_user, :class => 'Admin::User' do
    email "MyString"
  end
end
