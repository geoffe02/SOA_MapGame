class MapspaceController < ApplicationController
  def index
    @mapspace = Mapspace.all
    render :template => "mapspace/index"
  end
  
  def import
    begin
      Mapspace.import(params[:file])
      redirect_to mapspace_path, notice: "Mapspace Data Loaded."
    rescue
      redirect_to mapspace_path, notice: "Invalid CSV file format."
    end
  end
end
