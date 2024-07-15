json.extract! service, :id, :name, :description, :image, :price, :created_at, :updated_at
json.url service_url(service, format: :json)
json.description service.description.to_s
json.image url_for(service.image)
