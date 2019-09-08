class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger

  include ApplicationHelper
  
end