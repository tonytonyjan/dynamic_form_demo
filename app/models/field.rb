# == Schema Information
#
# Table name: fields
#
#  id         :integer          not null, primary key
#  form_id    :integer          not null
#  name       :string(255)      not null
#  type       :string(255)      default("text"), not null
#  required   :boolean          default(FALSE), not null
#  multiple   :boolean          default(FALSE), not null
#  options    :string(255)      is an Array
#  created_at :datetime
#  updated_at :datetime
#

class Field < ActiveRecord::Base
  extend Enumerize
  self.inheritance_column = nil
  # scope macros

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  belongs_to :form
  has_many :field_values

  # validation macros
  enumerize :type, in: %i[text textarea checkbox select]

  # callbacks

  # other
  def options= obj
    obj = obj.split(',') if obj.is_a? String
    super obj
  end

  def value_of(attendee)
    field_values.find_by(attendee: attendee)
  end

  protected
  # callback methods
end
