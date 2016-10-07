# == Schema Information
#
# Table name: employee_details
#
#  id                   :integer          not null, primary key
#  employee_id          :integer
#  department           :string
#  designation          :string
#  grade                :string
#  reporting_user_id    :integer
#  salary               :float
#  previous_company     :string
#  previous_salary      :float
#  previous_designation :string
#  joining_date         :date
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class EmployeeDetail < ActiveRecord::Base
  belongs_to :employee
  belongs_to :department

  accepts_nested_attributes_for :department, :reject_if => :all_blank
end
