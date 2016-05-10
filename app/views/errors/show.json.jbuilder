json.set! :response, @code
json.set! :data, @data || Rack::Utils::SYMBOL_TO_STATUS_CODE.key(@code)
