# == Schema Information
#
# Table name: gift_givens
#
#  id                  :integer          not null, primary key
#  gift_name           :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  recipient_id        :integer
#  gift_given_pic      :string
#  user_id             :integer
#  special_occasion_id :integer
#

class GiftGiven < ActiveRecord::Base
  belongs_to :recipient
  belongs_to :user
  belongs_to :special_occasion

  validates :gift_name, presence: true
  validates :recipient_id, presence: true

  mount_uploader :gift_given_pic, GiftUploader

end
