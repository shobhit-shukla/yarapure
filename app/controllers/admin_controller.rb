class AdminController < ApplicationController
  before_action :authenticate_user!, :authenticate_admin
  layout 'admin'

  def back_as_admin
    if session[:was_admin] && session[:old_user_id]
      sign_in(:user, User.find(session[:old_user_id]), { :bypass => true })
      session[:was_admin] = false
      redirect_to superadmins_path
    else
      redirect_to root_path, :alert => "You are not authorized to access this page."
    end
  end

  def authenticate_admin
    redirect_to :root unless current_user.admin?
  end

end
