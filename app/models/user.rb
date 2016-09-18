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
