class Admin::DispatchersController < AdminController
  before_action :set_admin_dispatcher, only: [:show, :edit, :update, :destroy]

  # GET /admin/dispatchers
  # GET /admin/dispatchers.json
  def index
    @admin_dispatchers = Dispatcher.all
  end

  # GET /admin/dispatchers/1
  # GET /admin/dispatchers/1.json
  def show
  end

  # GET /admin/dispatchers/new
  def new
    @admin_dispatcher = Dispatcher.new
  end

  # GET /admin/dispatchers/1/edit
  def edit
  end

  # POST /admin/dispatchers
  # POST /admin/dispatchers.json
  def create
    @admin_dispatcher = Dispatcher.new(admin_dispatcher_params)

    respond_to do |format|
      if @admin_dispatcher.save
        format.html { redirect_to @admin_dispatcher, notice: 'Dispatcher was successfully created.' }
        format.json { render :show, status: :created, location: @admin_dispatcher }
      else
        format.html { render :new }
        format.json { render json: @admin_dispatcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/dispatchers/1
  # PATCH/PUT /admin/dispatchers/1.json
  def update
    respond_to do |format|
      if @admin_dispatcher.update(admin_dispatcher_params)
        format.html { redirect_to @admin_dispatcher, notice: 'Dispatcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_dispatcher }
      else
        format.html { render :edit }
        format.json { render json: @admin_dispatcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/dispatchers/1
  # DELETE /admin/dispatchers/1.json
  def destroy
    @admin_dispatcher.destroy
    respond_to do |format|
      format.html { redirect_to admin_dispatchers_url, notice: 'Dispatcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dispatcher
      @admin_dispatcher = Admin::Dispatcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_dispatcher_params
      params.fetch(:admin_dispatcher, {})
    end
end
