# == Schema Information
#
# Table name: recipients
#
#  id           :integer          not null, primary key
#  name         :string
#  birthday     :string
#  relationship :string
#  notes        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#

class Recipient < ActiveRecord::Base
# Associations
  belongs_to :user
  has_many :gift_givens

# Validations
  validates :name, presence: true
  validates :birthday, presence: true
  validates :relationship, presence: true
  validates :notes, presence: true
  validates :user_id, presence: true
end
