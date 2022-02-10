class CustomerOrdersController < ApplicationController

    before_action :set_customer, only: %i[new create]
    before_action :confirmed_customer_logged_in, only: %i[new create]

    def new
        # if(@customer.customer_orders.order("created_at").last.created_at > 1.week.ago)
        #     flash[:notice] = "It is too soon for you to order another pack, you can order again on: " + (@customer.customer_orders.order("created_at").last.created_at + 1.week).utc.strftime('%m/%d/%Y %H:%M %p')
        #     redirect_to public_customer_orders_path
        # end


        @suppliers = Supplier.all
        @customer_order = @customer.customer_orders.new 
    end

    def create
        @customer_order = @customer.customer_orders.new(customer_params)

        if @customer_order.valid?
            @customer_order.save
            respond_to do |format|
                #! CHANGE REDIRECT
                format.html { redirect_to public_customer_orders_path, notice: "Order was successfully created." }
            end

        else
            flash[:notice] = @customer_order.errors
            redirect_to new_customer_customer_order_path(@customer)
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