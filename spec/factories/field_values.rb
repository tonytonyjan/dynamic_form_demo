# == Schema Information
#
# Table name: field_values
#
#  id          :integer          not null, primary key
#  attendee_id :integer          not null
#  field_id    :integer          not null
#  value       :text
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :field_value do
    attendee nil
    field nil
    value "MyText"
  end
end
