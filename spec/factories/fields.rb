# == Schema Information
#
# Table name: fields
#
#  id         :integer          not null, primary key
#  form_id    :integer          not null
#  name       :string(255)      not null
#  type       :string(255)      default("text"), not null
#  required   :boolean          default(FALSE), not null
#  multiple   :boolean          default(FALSE), not null
#  options    :string(255)      is an Array
#  created_at :datetime
#  updated_at :datetime
#

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
