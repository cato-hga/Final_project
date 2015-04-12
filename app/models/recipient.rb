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
#

class Recipient < ActiveRecord::Base
# Associations
  has_many :gift_givens, dependent: :destroy
  belongs_to :special_occasion

# Validations
  validates :name, presence: true
  validates :relationship, presence: true
  validates :notes, presence: true
end
