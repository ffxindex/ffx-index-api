class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :validate_api_key, :cache_page, :set_format

  private

  def cache_page
    expires_in 1.week, public: true
  end

  # Treat every incoming response as json
  def set_format
    request.format = 'json'
  end

  def get_api_key
    if params[:api_key].present?
      params[:api_key]
    else
      authenticate_or_request_with_http_token do |token, options|
        token
      end
    end
  end

  def validate_api_key
    api_user = ApiUser.find_by(api_key: get_api_key)

    if api_user.present? && api_user.permitted

    else
      @code = 401
      @data = 'unauthorized - please check your API key'
      render 'errors/show'
    end
  end
end
