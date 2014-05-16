# == Schema Information
#
# Table name: attendees
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  form_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Admin::Attendee < Attendee
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  belongs_to :user
  belongs_to :form

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
