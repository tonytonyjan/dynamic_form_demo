class Attendee < ActiveRecord::Base
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  belongs_to :user
  belongs_to :form
  has_many :field_values
  accepts_nested_attributes_for :field_values

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
