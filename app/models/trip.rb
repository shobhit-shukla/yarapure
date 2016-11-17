# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  vehicle_id :integer
#  driver1_id :integer
#  driver2_id :integer
#  product_id :integer
#  aasm_state :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'aasm'

class Trip < ActiveRecord::Base
  include AASM
  aasm do
    state :dispatched, :initial => true
    state :in_transit
    state :returned

    event :submit do
      transitions :from => :unplaced, :to => :submitted
    end
  end
end
