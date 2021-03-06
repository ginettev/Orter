# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'f92c99c75424ae3a97cc0033145fe066'

  def rescue_action(exception)
    p exception
    LOGGER.error(exception)
    render :file => "#{RAILS_ROOT}/public/error.html"
  end
  
end
