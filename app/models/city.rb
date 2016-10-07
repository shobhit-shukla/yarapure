# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  name         :string
#  state_id     :string
#  abbreviation :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class City < ActiveRecord::Base
  belongs_to :state
  has_many :addresses
end
