# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  address1         :string
#  address2         :string
#  city_id          :string
#  zip_code         :string
#  active           :boolean
#  user_id          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  addressable_id   :integer
#  addressable_type :string
#

class Address < ActiveRecord::Base
  belongs_to :city
  belongs_to :addressable, :polymorphic => true

  validates :address1, :city_id, presence: true
end
