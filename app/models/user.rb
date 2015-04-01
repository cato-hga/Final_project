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
end
