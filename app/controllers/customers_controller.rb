class CustomersController < InheritedResources::Base
  def index
    @customers = Customer.all
  end

  private

  def customer_params
    params.require(:customer).permit(:customer_name, :customer_order, :customer_company, :company_id)
  end
end
