class PharmacyOrdersController < ApplicationController
  before_action :set_pharmacy, only: %i[new create]
  before_action :confirmed_pharmacy_logged_in, only: %i[new create]

  def new
    @suppliers = Supplier.all
    @pharmacy_order = @pharmacy.pharmacy_orders.new
  end

  def create
    @pharmacy_order = @pharmacy.pharmacy_orders.new(pharmacy_params)

    if @pharmacy_order.valid?
      @pharmacy_order.save

      respond_to do |format|
        # add public pharmacy order path
        format.html { redirect_to public_pharmacy_orders_path, notice: "Order was successfully created" }
      end
    else
      flash[:notice] = @pharmacy_order.errors
      redirect_to new_pharmacy_pharmacy_order_path(@pharmacy)
    end
    
  end

  private

  def pharmacy_params
    params.require(:pharmacy_order).permit(:supplier_id, :amount, :deliver_address, :postcode)
  end

  def set_pharmacy
    @pharmacy = Pharmacy.find(params[:pharmacy_id]) 
  end 
end
