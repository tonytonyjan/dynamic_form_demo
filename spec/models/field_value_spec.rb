# == Schema Information
#
# Table name: field_values
#
#  id          :integer          not null, primary key
#  attendee_id :integer          not null
#  field_id    :integer          not null
#  value       :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe FieldValue do
  pending "add some examples to (or delete) #{__FILE__}"
end
