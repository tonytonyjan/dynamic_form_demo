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

class FieldValue < ActiveRecord::Base
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  belongs_to :attendee
  belongs_to :field

  # validation macros

  # callbacks

  # other
  def value= value
    value = value.to_json if value.is_a? Array
    super value
  end

  def value
    field.multiple ? JSON.parse(read_attribute(:value)) : super rescue super
  end

  def value_text
    field.multiple ? JSON.parse(value) : value rescue value
  end

  protected
  # callback methods
end
