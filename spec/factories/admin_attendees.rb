# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_attendee, :class => 'Admin::Attendee' do
    user nil
    form nil
  end
end
