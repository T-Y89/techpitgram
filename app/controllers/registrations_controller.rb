class RegistrationsController < Devise::RegistrationsController

  protected

  def update_resource(resource, params)
    resource.update_without_current_password(params)
    # ↑models/user.rbのL8で定義
  end

  def after_update_path_for(resource)
    user_path(resource)
  end
  
end
