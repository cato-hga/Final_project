# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  avatar     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  password   :string
#

class User < ActiveRecord::Base
  has_many :recipients
  has_many :special_occasions
  has_many :gift_givens
  
  mount_uploader :avatar, AvatarUploader

end
