# == Schema Information
#
# Table name: forms
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Admin::Form < Form
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  has_many :attendees
  has_many :fields

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
