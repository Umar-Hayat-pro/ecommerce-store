json.extract! admin_category, :id, :name, :description, :status, :created_at, :updated_at
json.url admin_category_url(admin_category, format: :json)
