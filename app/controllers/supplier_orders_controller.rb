class SupplierOrdersController < ApplicationController

  before_action :confirmed_supplier_logged_in, only: %i[new create]
  before_action :set_supplier, only: %i[new create]
  def new
    @supplier_order = @supplier.supplier_orders.new
  end

  def create
    @supplier_order = @supplier.supplier_orders.new(supplier_params)

    if @supplier_order.valid?
      @supplier_order.save
      respond_to do |format|
        format.html{redirect_to public_supplier_orders_path, notice: "Order was successfully created"}
      end
    else
            flash[:notice] = @supplier_order.errors
      redirect_to new_supplier_supplier_order_path(@supplier)
    end
  end


  private
  def set_supplier
    @supplier = Supplier.find(params[:supplier_id])
  end

  def supplier_params
    params.require(:supplier_order).permit(:amount, :deliver_address, :postcod)
  end
end
