# == Schema Information
#
# Table name: recipients
#
#  id                  :integer          not null, primary key
#  name                :string
#  relationship        :string
#  notes               :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  special_occasion_id :integer
#  user_id             :integer
#

require 'test_helper'

class RecipientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
