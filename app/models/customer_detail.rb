# == Schema Information
#
# Table name: customer_details
#
#  id               :integer          not null, primary key
#  customer_id      :integer
#  customer_type_id :integer
#  plan_id          :integer
#  shift            :string
#  days_type        :integer
#  preferred_time   :time
#  start_date       :date
#  deposit_amount   :float
#  rate             :integer
#  quantity         :integer
#  product_id       :integer
#  is_order         :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CustomerDetail < ActiveRecord::Base
	belongs_to :customer
	belongs_to :plan
	validates :plan_id, :shift, :start_date, :days_type, presence: true
	enum days_type: ['MWF', 'TTS', 'Daily', 'On call']
end
