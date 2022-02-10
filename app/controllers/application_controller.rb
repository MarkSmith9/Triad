class ApplicationController < ActionController::Base

    private

    def confirmed_customer_logged_in

        unless session[:type] == "customer"
            flash[:notice] = "You Do Not Have Permission To View That Page"
            redirect_to(access_customer_login_path)
        end
    end

    def confirmed_supplier_logged_in

        unless session[:type] == "supplier"
            flash[:notice] = "You Do Not Have Permission To View That Page"
            redirect_to(access_supplier_login_path)
        end
    end

    def confirmed_pharmacy_logged_in

        unless session[:type] == "pharmacy"
        flash[:notice] = "You Do Not Have Permission To View That Page"
        redirect_to(access_pharmacy_login_path)
        end
    end
end
