json.set! :response, response.status
json.set! :data do
  json.array! @monsters do |monster|
    json.name monster.name
    json.location monster.location.name

    json.api_details do
      json.monster do
        json.id monster.id
        json.slug monster.slug
      end

      json.location do
        json.id monster.location.id
        json.slug monster.location.slug
      end
    end
  end
end
