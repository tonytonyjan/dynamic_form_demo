class Field < ActiveRecord::Base
  self.inheritance_column = nil
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  belongs_to :form

  # validation macros
  enum type: %i[text textarea]

  # callbacks

  # other

  protected
  # callback methods
end
