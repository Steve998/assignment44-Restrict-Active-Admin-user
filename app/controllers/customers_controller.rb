class CustomersController < InheritedResources::Base
  def index
    @customers = Customer.all
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :order, :company_id)
  end
end
