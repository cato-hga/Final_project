# == Schema Information
#
# Table name: recipients
#
#  id           :integer          not null, primary key
#  name         :string
#  relationship :string
#  notes        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipient < ActiveRecord::Base
# Associations
  has_many :gift_givens
  has_many :special_occasions

# Validations
  validates :name, presence: true
  validates :relationship, presence: true
  validates :notes, presence: true
end
