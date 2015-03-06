class CompaniesController < InheritedResources::Base


  private

    def company_params
      params.require(:company).permit(:company_name, :company_customer, :company_bio)
    end
end
