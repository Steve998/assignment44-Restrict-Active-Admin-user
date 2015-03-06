class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:customer_name, :customer_order, :customer_company)
    end
end
