class Users::RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_in_path_for(resource)
    if resource.is_admin
      :admins
    elsif resource.is_admin == false
      :users
    else
      super
    end
  end
end
