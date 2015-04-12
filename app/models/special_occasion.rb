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

class SpecialOccasion < ActiveRecord::Base
# Associations
  belongs_to :user
  has_many :recipients, dependent: :destroy

# Validations
  validates :name, presence: true
  #validates :user_id, presence: true
end
