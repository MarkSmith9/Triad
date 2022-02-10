class CustomerOrdersController < ApplicationController

    before_action :set_customer, only: %i[new create]
    before_action :confirmed_customer_logged_in, only: %i[new create]

    def new
        @suppliers = Supplier.all
        @customer_order = @customer.customer_orders.new 
    end

    def create
         @customer_order = @customer.customer_orders.create!(customer_params)

        respond_to do |format|
            #! CHANGE REDIRECT
            format.html { redirect_to public_customer_orders_path, notice: "Order was successfully created." }
        end

    end




    private
    def set_customer
        @customer = Customer.find(params[:customer_id])
    end


    def customer_params
        params.require(:customer_order).permit(:supplier_id, :deliver_address, :postcode, :status)
    end
end