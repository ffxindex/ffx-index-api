class ApplicationController < ActionController::API
  include ActionController::Caching
  include ActionView::Helpers::CacheHelper
  include ActionView::Rendering

  before_action :cache_page

  def cache_page
    expires_in 1.month, public: true
  end
end
