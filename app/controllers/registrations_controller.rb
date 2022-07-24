class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!
  protected

  def after_sign_up_path_for(resource)
    if resource.is_admin == true
      :admins
    elsif resource.is_admin == false
      :users
    else
      super
    end
  end
end
