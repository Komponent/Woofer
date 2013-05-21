class SearchController < ApplicationController
  respond_to :json, :html
  def index
    @Users=User.search(params[:q])

      #format.html # index.html.erb
      #format.json { render json: @Users }

  end
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Users }
    end
  end
end
