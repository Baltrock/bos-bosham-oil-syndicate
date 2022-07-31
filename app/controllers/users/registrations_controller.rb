class Users::RegistrationsController < Devise::RegistrationsController

  # protected

  def after_sign_in_path(resource)
    if resource.is_admin
      :admins_path
    elsif resource.is_admin == false
      :users_path
    else
      super
    end
  end
end
