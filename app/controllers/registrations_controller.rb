class RegistrationsController < Devise::RegistrationsController


  def create
    build_resource

    if resource.save
      @profile=Profile.new(:alias=>[resource.name,resource.surname].join(' '), user_id: resource.id)
      @profile.save
      if resource.active_for_authentication?

        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      if resource.email.blank? or resource.name.blank?
        clean_up_passwords resource
        flash.now[:alert]="error"

        #redirect_to root_path

        #flash[:notice]=flash[:notice].to_a.concat resource.errors.full_messages
      end

      #flash[:notice] =
      #

    end
  end




end