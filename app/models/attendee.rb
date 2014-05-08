class Attendee < ActiveRecord::Base
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
