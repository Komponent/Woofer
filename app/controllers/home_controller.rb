class HomeController < ApplicationController


  def index
    @usuarios = Profile.search(params[:q])
  end


end
