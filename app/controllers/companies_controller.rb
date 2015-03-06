class CompaniesController < InheritedResources::Base

  def index
    @companies = Company.all
  end

  private

  def company_params
    params.require(:company).permit(:company_name, :company_customer, :company_bio, :customers_count)
  end
end
