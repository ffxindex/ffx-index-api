json.set! :response, @code
json.set! :data, Rack::Utils::SYMBOL_TO_STATUS_CODE.key(@code)
