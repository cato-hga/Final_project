# == Schema Information
#
# Table name: gift_givens
#
#  id         :integer          not null, primary key
#  gift_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GiftGiven < ActiveRecord::Base
end
