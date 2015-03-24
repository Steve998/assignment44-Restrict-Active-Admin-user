class CompaniesController < InheritedResources::Base

  def index
    @usercompany = current_user.companies
    logger.debug "DEBUG THIS LINE"
    logger.debug @companies.inspect
  end

  private

  def company_params
    params.require(:company).permit(:name, :bio, :image)
  end
end
