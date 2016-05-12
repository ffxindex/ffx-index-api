json.set! :response, response.status
json.set! :data do
  json.array! @mixes do |mix|
    json.name mix.name
    json.description mix.description

    json.api_details do
      json.id mix.id
      json.slug mix.slug
    end
  end
end
