# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  avatar          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  user_name       :string
#  admin           :boolean
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
