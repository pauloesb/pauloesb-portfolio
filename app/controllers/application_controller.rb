class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseRedirect
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
end
