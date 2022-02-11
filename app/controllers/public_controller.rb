class PublicController < ApplicationController
  before_action :confirmed_customer_logged_in, only: %i[customer_orders]
  before_action :confirmed_pharmacy_logged_in, only: %i[pharmacy_orders]
  before_action :confirmed_supplier_logged_in, only: %i[supplier_orders, view_orders]
  def index
  end


  def customer_orders
    @customer = Customer.find(session[:id])
  end

  def pharmacy_orders
    @pharmacy = Pharmacy.find(session[:id])
  end

  def supplier_orders
    @supplier = Supplier.find(session[:id])
  end


  def pharmacy_viewer
      @pharmacies = Pharmacy.all
  end

  def collection
    @img = RQRCode::RQRCode.new("https://www.youtube.com/watch?v=dQw4w9WgXcQ").as_png(size: 300)

  end

  def view_orders
    @supplier = Supplier.find(session[:id])
  end
end
