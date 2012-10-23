# == Schema Information
#
# Table name: dudes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  photo      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DudeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
