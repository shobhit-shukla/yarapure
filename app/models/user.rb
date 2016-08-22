class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
  	first_name.to_s + ' ' + last_name.to_s
  end

  def full_address
  	address.to_s + ', ' + city.to_s
  end

end
