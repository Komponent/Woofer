module ApplicationHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def show_flash
    [:notice, :warning, :message].collect do |key|
      content_tag(:div,flash[key],:class=>"flash flash_#{key}") unless flash[key].blank?
    end.join
  end
end
