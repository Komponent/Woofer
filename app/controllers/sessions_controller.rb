class SessionsController < Devise::SessionsController

  def new
    unless user_signed_in?
      respond_to do |format|
        format.html { redirect_to root_path, notice: "We couldn't log you in, email/password were wrong"}
      end
      end
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    if sign_in(resource_name, resource)
      respond_with resource, location: after_sign_in_path_for(resource)
    else
      respond_with resource, location: root_path
    end
  end

  def destroy
    redirect_path = after_sign_out_path_for(resource_name)
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message :notice, :signed_out if signed_out && is_navigational_format?


    respond_to do |format|
      format.all { head :no_content }
      format.any(*navigational_formats) { redirect_to redirect_path }
    end
  end

end


