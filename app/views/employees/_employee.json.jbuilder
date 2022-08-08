json.extract! employee, :id, :name, :email, :phonenumber, :device_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
