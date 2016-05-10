class ApplicationController < ActionController::API
  include ActionController::Caching
  include ActionView::Helpers::CacheHelper
end
