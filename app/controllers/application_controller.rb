class ApplicationController < ActionController::API
  before_action :cache_page, :set_format

  def cache_page
    expires_in 1.month, public: true
  end

  # Treat every incoming response as json
  def set_format
    request.format = 'json'
  end
end
