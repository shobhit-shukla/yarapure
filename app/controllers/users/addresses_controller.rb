class User::AddressesController < ApplicationController
  before_action :set_admin_address, only: [:show, :edit, :update, :destroy]

  # GET /admin/addresses
  # GET /admin/addresses.json
  def index
    @admin_addresses = Admin::Address.all
  end

  # GET /admin/addresses/1
  # GET /admin/addresses/1.json
  def show
  end

  # GET /admin/addresses/new
  def new
    @admin_address = Admin::Address.new
  end

  # GET /admin/addresses/1/edit
  def edit
  end

  # POST /admin/addresses
  # POST /admin/addresses.json
  def create
    @admin_address = Admin::Address.new(admin_address_params)

    respond_to do |format|
      if @admin_address.save
        format.html { redirect_to @admin_address, notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @admin_address }
      else
        format.html { render :new }
        format.json { render json: @admin_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/addresses/1
  # PATCH/PUT /admin/addresses/1.json
  def update
    respond_to do |format|
      if @admin_address.update(admin_address_params)
        format.html { redirect_to @admin_address, notice: 'Address was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_address }
      else
        format.html { render :edit }
        format.json { render json: @admin_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/addresses/1
  # DELETE /admin/addresses/1.json
  def destroy
    @admin_address.destroy
    respond_to do |format|
      format.html { redirect_to admin_addresses_url, notice: 'Address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admin_address
    @admin_address = Admin::Address.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_address_params
    params.require(:admin_address).permit(:address1, :address2, :city_id, :zip_code, :active, :user_id)
  end
end
