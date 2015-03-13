class CompaniesController < InheritedResources::Base

  def index
    @companies = Company.all
  end

  private

  def company_params
    params.require(:company).permit(:name, :bio, :image)
  end
end
