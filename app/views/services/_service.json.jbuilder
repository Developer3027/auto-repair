json.extract! service, :id, :name, :description, :image, :price, :created_at, :updated_at
json.url service_url(service, format: :json)
json.description strip_tags(service.description.to_s)

if service.image.attached?
  json.image url_for(service.image)
else
  json.image nil
end
