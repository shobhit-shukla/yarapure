# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  keywords    :string
#  featured    :boolean
#  active      :boolean
#  brand_id    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  rate        :float
#  quantity    :integer
#

class Product < ActiveRecord::Base
	belongs_to :brand
end
