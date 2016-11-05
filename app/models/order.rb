class Order < User
	has_many :customer_details

	accepts_nested_attributes_for :customer_details

	def password_required?
	  false
	end

	def email_required?
	  false
	end
end
