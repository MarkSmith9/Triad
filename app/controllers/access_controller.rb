class AccessController < ApplicationController
  def logout
    redict = session[:type] 
    session[:id] = nil
    session[:type] = nil
    flash[:notice] = "You have successfully logged Out."

    #redict to right login page
    if redict == "customer"
      redirect_to access_customer_login_path
    elsif redict == "supplier"
      redirect_to access_supplier_login_path
    elsif redict == "pharmacy"
      redirect_to access_pharmacy_login_path
    end
  end

  def customer_login
  end

  def supplier_login
  end

  def pharmacy_login
  end

  def customer_login_attempt
    # customer login
    if params[:nhs_number].present? && params[:password].present?
      customer = Customer.where(nhs_number: params[:nhs_number]).first
      if customer
        auth_custom = customer.authenticate(params[:password])
      end
    end


    if auth_custom
      session[:id] = auth_custom.id
      session[:type]= "customer"
      flash[:notice] = "You have successfully logged in."
    else
      flash.now[:notice] = "Invalid Login"
      render('customer_login')
    end
  end

  def supplier_login_attempt
    # supplier login
    if params[:name].present? && params[:password].present?
      supplier = Supplier.where(name: params[:name]).first
      if supplier
        auth_supplier = supplier.authenticate(params[:password])
      end
    end

    if auth_supplier
      session[:id] = auth_supplier.id
      session[:type]= "supplier"
      flash[:notice] = "You have successfully logged in."
    else
      flash.now[:notice] = "Invalid Login"
      render('supplier_login')
    end
  end

  def pharmacy_login_attempt
    if params[:name].present? && params[:password].present?
      pharm = Pharmacy.where(name: params[:name]).first
      if pharm
        auth_pharm = pharm.authenticate(params[:password])
      end
    end

    if auth_pharm
      session[:id] = auth_pharm.id
      session[:type]= "pharmacy"
      flash[:notice] = "You have successfully logged in."
 
    else
      flash.now[:notice] = "Invalid Login"
      render('pharmacy_login')
    end
  end
end
