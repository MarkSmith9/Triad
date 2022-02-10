class PublicController < ApplicationController
  before_action :confirmed_customer_logged_in, only: %i[customer_orders]
  before_action :confirmed_pharmacy_logged_in, only: %i[pharmacy_orders]
  def index
  end


  def customer_orders
    @customer = Customer.find(session[:id])
  end

  def pharmacy_orders
    @pharmacy = Pharmacy.find(session[:id])
  end
end
