class MapspacesController < ApplicationController
def index
    @mapspaces = Mapspace.all
    render :template => "mapspaces/index"
  end
  
  def import
    begin
      Mapspace.import(params[:file])
      redirect_to mapspaces_path, notice: "Mapspace Data Loaded."
    rescue
      redirect_to mapspaces_path, notice: "Invalid CSV file format."
    end
  end
end
