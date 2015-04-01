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
#

class Recipient < ActiveRecord::Base
end
