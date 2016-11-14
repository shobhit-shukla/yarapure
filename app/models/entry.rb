# == Schema Information
#
# Table name: entries
#
#  id           :integer          not null, primary key
#  user_id      :string
#  product_id   :string
#  rate         :float
#  no_of_jars   :integer
#  amount       :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  empty        :string
#  filled       :string
#  amount_paid  :float
#  driver1      :integer
#  driver2      :integer
#  total_amount :string
#  remark       :text
#  collected_by :integer
#

class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  
  validates :user_id, :product_id, :rate, :no_of_jars, :amount_paid, presence: true
end
