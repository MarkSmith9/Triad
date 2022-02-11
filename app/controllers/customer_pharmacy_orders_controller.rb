class CustomerPharmacyOrdersController < ApplicationController
    before_action :set_pharmacy, only: %i[new create]
    before_action :confirmed_customer_logged_in, only: %i[new create]
  def new
    @customer_pharmacy_order = @pharmacy.customer_pharmacy_orders.new
  end

  def create
    @customer_pharmacy_order = @pharmacy.customer_pharmacy_orders.new(customer_pharmacy_order_params)
    @customer_pharmacy_order.customer = Customer.find(session[:id])


    if @customer_pharmacy_order.valid?
      @customer_pharmacy_order.save

      respond_to do |format|
        # add public pharmacy order path
        format.html { redirect_to public_customer_orders_path, notice: "Order was successfully created" }
      end
    else
      flash[:notice] = @customer_pharmacy_order.errors
      redirect_to new_pharmacy_customer_pharmacy_order_path(@pharmacy)
    end

    
  end

  private

  def set_pharmacy
    @pharmacy = Pharmacy.find(params[:pharmacy_id]) 
  end 

  def customer_pharmacy_order_params
    params.require(:customer_pharmacy_order).permit(:date)
  end
end
