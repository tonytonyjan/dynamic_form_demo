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

require 'spec_helper'

describe Field do
  pending "add some examples to (or delete) #{__FILE__}"
end
