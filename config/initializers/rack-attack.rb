class Rack::Attack
  whitelist('allow from localhost') do |req|
    '127.0.0.1' == req.ip || '::1' == req.ip
  end

  throttle('req/ip', limit: 5, period: 3.seconds) do |req|
    req.ip
  end

  Rack::Attack.blacklisted_response = lambda do |env|
    body = {
      status: 503,
      data: "service_unavailable"
    }.to_json

    [ 503, {}, [body]]
  end

  Rack::Attack.throttled_response = lambda do |env|
     body = {
       status: 429,
       data: "Ratelimit reached. Limit is #{env['rack.attack.match_data'][:limit]} requests every #{env['rack.attack.match_data'][:period]} seconds"
     }.to_json

    [ 429, {}, [body]]
  end
end
