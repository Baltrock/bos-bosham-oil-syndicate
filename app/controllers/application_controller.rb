class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :fuel_limit, :current_fuel_volume, :required_fuel, :instructions_for_delivery, :is_admin])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:fuel_limit, :current_fuel_volume, :required_fuel, :instructions_for_delivery])
  end

  respond_to :html, :json
  protected

  # def after_sign_in_path_for(user)
  #   stored_location_for(resource) ||
  #    if user.is_admin?
  #      admin_root_path
  #    else
  #      user_root_path
  #    end
  # end

  def after_sign_up_path(resource)
    user_root_path(current_user) || request.referrer
  end

  def after_log_in_path(resource)
    user_root_path(current_user) || request.referrer
  end

    def after_sign_up_path(resource)
    admin_root_path(current_user) || request.referrer
  end

  def after_log_in_path_for(admin)
    admin_root_path(resource) || request.referrer
  end

end
