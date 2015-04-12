# == Schema Information
#
# Table name: special_occasions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  recipient  :string
#

require 'test_helper'

class SpecialOccasionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
