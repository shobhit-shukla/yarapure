# == Schema Information
#
# Table name: payments
#
#  id           :integer          not null, primary key
#  payment_mode :integer
#  customer_id  :integer
#  employee_id  :integer
#  bank         :string
#  cheque_date  :datetime
#  total_dues   :float
#  remark       :text
#  cheque_no    :string
#  amount       :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Payment < ActiveRecord::Base
  enum payment_mode: [ :Cash, :Cheque ]
end
