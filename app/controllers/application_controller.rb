require 'auth'

class ApplicationController < ActionController::API
   def current_user
      Auth::Auth0.user @uid
   end
end
