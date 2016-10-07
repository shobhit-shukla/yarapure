# == Schema Information
#
# Table name: states
#
#  id           :integer          not null, primary key
#  name         :string
#  country_id   :string
#  abbreviation :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class State < ActiveRecord::Base
  has_many :cities
end
