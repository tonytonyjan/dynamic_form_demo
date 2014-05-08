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
  enumerize :type, in: %i[text textarea checkbox select]

  # callbacks

  # other
  def options= obj
    obj = obj.split(',') if obj.is_a? String
    super obj
  end

  protected
  # callback methods
end
