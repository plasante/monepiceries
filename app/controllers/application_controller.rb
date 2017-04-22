class ApplicationController < ActionController::Base
  before_action :set_locale
  
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def set_locale
    logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
    I18n.locale = current_user.try(:language) || extract_locale_from_accept_language_header
    logger.debug "* Locale set to '#{I18n.locale}'"
  end
  
  private
  
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
    
end
