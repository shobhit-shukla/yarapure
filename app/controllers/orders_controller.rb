class OrdersController < AdminController
  def index
  end

  def new
  	@order = Order.new
  	@order.addresses.build
    @order.customer_details.build
  end

  def create
    @order = Order.new(user_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_path, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end
	
	def user_params
    params.require(:order).permit! # (:first_name, :middle_name, :last_name, :address_id, :shift, :preferred_time, :batch_id)
  end
end
