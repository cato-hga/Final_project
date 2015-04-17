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

class Recipient < ActiveRecord::Base
# Associations
  has_many :gift_givens
  belongs_to :special_occasion
  belongs_to :user

# Validations
  validates :name, presence: true
  validates :relationship, presence: true
  #validates :notes, presence: true
end
