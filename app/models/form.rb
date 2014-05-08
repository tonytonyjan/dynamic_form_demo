class Form < ActiveRecord::Base
  # scope macros

  # Concerns macros
  include Select2Concern

  # Constants
  
  # Attributes related macros
  select2_white_list :title

  # association macros
  has_many :attendees
  has_many :fields
  accepts_nested_attributes_for :fields

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
