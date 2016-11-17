# == Schema Information
#
# Table name: vehicles
#
#  id              :integer          not null, primary key
#  registration_no :string
#  year            :string
#  make            :string
#  model           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Vehicle < ActiveRecord::Base
  def vehicle_with_number
    make.to_s+' '+model.to_s+' #'+registration_no.to_s
  end
end
