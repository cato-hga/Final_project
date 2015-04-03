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
#

class User < ActiveRecord::Base
# For bcrypt
  has_secure_password

# Associations
  has_many :recipients
  has_many :special_occasions
  has_many :gift_givens

  mount_uploader :avatar, AvatarUploader

# Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }

end
