json.extract! dashboard_form, :id, :company_name, :address, :pounds_per_litre, :comment, :rating, :created_at, :updated_at
json.url dashboard_form_url(dashboard_form, format: :json)
