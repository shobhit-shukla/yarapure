module UsersHelper
	def user_avatar(user)
		if user.avatar?
			image_tag(user.avatar_url(:thumbnail), :width => 100, :height => 100, class: "img-circle")
		else
			image_tag "user.png", :class => "img-circle profile_img"
		end
	end

	def user_form_url(user)
		if user.new_record? 
			send("admin_#{controller_name}_path") 
		else	
		  send("admin_#{controller_name.singularize}_path", user)
		end
	end
end
