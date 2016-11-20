class SuperadminsController < ApplicationController
  before_action :authenticate_user!, :authenticate_superadmin
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  layout 'superadmin'

  def index
    @admin = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        redirect_to superadmins_path, notice: 'Admin was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to superadmins_path, notice: 'Admin was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def become
    if current_user.superadmin?
      old_id = current_user.id
      sign_in(:user, User.find(params[:id]))
      session[:was_admin] = true
      session[:old_user_id] = old_id
      redirect_to admin_path
    else
      redirect_to :back
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params.require(:admin).permit!
  end

  def authenticate_superadmin
    redirect_to :root unless current_user.superadmin?
  end
end
