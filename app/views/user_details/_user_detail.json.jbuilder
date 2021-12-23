json.extract! user_detail, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url user_detail_url(user_detail, format: :json)
