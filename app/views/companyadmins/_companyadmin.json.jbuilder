json.extract! companyadmin, :id, :username, :password, :email, :created_at, :updated_at
json.url companyadmin_url(companyadmin, format: :json)
