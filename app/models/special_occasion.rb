# == Schema Information
#
# Table name: special_occasions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SpecialOccasion < ActiveRecord::Base
end
