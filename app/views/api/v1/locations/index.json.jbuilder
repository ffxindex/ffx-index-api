json.set! :response, response.status
json.set! :data do
  json.array! @locations do |location|
    json.name location.name

    json.api_details do
      json.id location.id
      json.slug location.slug
    end
  end
end
