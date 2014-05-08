class Form < ActiveRecord::Base
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  has_many :fields
  accepts_nested_attributes_for :fields

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
