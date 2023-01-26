class ApplicationController < ActionController::Base
  helper_method :happy?

  def happy?
    return true if DateTime.now.wday == 5

    false
  end
end
