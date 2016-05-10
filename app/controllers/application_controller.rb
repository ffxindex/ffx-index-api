class ApplicationController < ActionController::API
  before_filter :set_format
  before_action :cache_page

  def cache_page
    expires_in 1.month, public: true
  end

  # Treat every incoming response as json
  def set_format
    request.format = 'json'
  end
end
