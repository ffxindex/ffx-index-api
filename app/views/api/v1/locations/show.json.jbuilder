json.set! :response, response.status
json.set! :data do
  json.name @location.name

  json.api_details do
    json.id @location.id
    json.slug @location.slug
  end

  json.set! :monsters do
    json.array! @location.monsters do |monster|
      json.name monster.name
      json.api_details do
        json.id monster.id
        json.slug monster.slug
      end
    end
  end
end
