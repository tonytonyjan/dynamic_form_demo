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

  protected
  # callback methods
end
