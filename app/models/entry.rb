# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  user_id    :string
#  product_id :string
#  rate       :float
#  no_of_jars :integer
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  
  validates :user_id, :product_id, :rate, :no_of_jars, :amount, presence: true
end
