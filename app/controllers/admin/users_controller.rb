class Admin::UsersController < AdminController
	def create
		byebug
		@user = Dispatcher.new(admin_dispatcher_params)

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
end
