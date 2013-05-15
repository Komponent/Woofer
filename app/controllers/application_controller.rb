class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    @Profile=Profile.find_all_by_user_id(current_user.id)
     profile_path(current_user.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
