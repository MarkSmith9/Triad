class PublicController < ApplicationController
  before_action :confirmed_customer_logged_in, only: %i[customer_orders]
  def index
  end


  def customer_orders
    @customer = Customer.find(session[:id])
  end
end
