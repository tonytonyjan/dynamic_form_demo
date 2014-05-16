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
  has_many :fields, through: :form

  # validation macros
  validate :check_required_fields

  # callbacks
  after_initialize do
    field_values.each do |field_value|
      self.class.send :define_method, field_value.field.name do
        field_value.value
      end
    end
  end

  # other
  def check_required_fields
    field_values.each do |field_value|
      if field_value.field.required && field_value.value.blank?
        errors.add(field_value.field.name, :blank)
      end
    end
  end

  protected
  # callback methods
end
