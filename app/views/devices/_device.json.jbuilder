json.extract! device, :id, :device_name, :device_type, :os_type, :service_tag, :created_at, :updated_at
json.url device_url(device, format: :json)
