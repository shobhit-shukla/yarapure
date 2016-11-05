# == Schema Information
#
# Table name: customer_types
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CustomerType < ActiveRecord::Base
end
