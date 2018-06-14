module DeviseRedirect
  extend ActiveSupport::Concern

  included do
    before_action :store_user_location!, if: :storable_location?
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer || stored_location_for(resource_or_scope) || super
  end

  private

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr? 
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
end
