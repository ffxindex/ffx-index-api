json.set! :response, response.status
json.set! :data do
  json.array! @results do |result|
    json.name result[0]
    json.id result[1]
    json.slug result[2]
    json.type result[3]
    json.link result[4]
  end
end
