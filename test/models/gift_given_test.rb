# == Schema Information
#
# Table name: gift_givens
#
#  id                  :integer          not null, primary key
#  gift_name           :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  recipient_id        :integer
#  special_occasion_id :integer
#

require 'test_helper'

class GiftGivenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
