json.array!(@companies) do |company|
  json.extract! company, :id, :company_name, :company_customer, :company_bio
  json.url company_url(company, format: :json)
end
