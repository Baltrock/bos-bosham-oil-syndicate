class Users::RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?
      :admins_path
    elsif resource.is_a? == false
      :users_path
    else
      super
    end
  end
end
