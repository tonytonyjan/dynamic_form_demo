class Field < ActiveRecord::Base
  extend Enumerize
  self.inheritance_column = nil
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  belongs_to :form

  # validation macros
  enumerize :type, in: %i[text textarea]

  # callbacks

  # other

  protected
  # callback methods
end
