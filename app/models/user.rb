# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  middle_name            :string
#  last_name              :string
#  address_id             :text
#  shift                  :string
#  preferred_time         :time
#  batch_id               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  type                   :string
#  secondary_phone        :string
#  plan_id                :integer
#  product_id             :integer
#  phone                  :string
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :addresses
  validates :email, presence: :true, if: Proc.new { |a| a.dispatcher? }

  accepts_nested_attributes_for :addresses

  def full_name
  	first_name.to_s + ' ' + last_name.to_s
  end

  def customer?
  	type == 'Customer'
  end

  def dispatcher?
  	type == 'Dispatcher'
  end
 
end
