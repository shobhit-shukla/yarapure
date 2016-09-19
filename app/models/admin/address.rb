# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  address1   :string
#  address2   :string
#  city_id    :string
#  zip_code   :string
#  active     :boolean
#  user_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Address < ActiveRecord::Base
end
