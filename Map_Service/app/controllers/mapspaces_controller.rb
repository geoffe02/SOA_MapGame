class MapspacesController < ApplicationController
  before_action :set_mapspace, only: [:show]
  respond_to :json, :html

  def index
    @mapspaces = Mapspace.all
    render :template => "mapspaces/index"
  end

  # Needed to provide the response action to incoming queries
  def show
    @mapspace = Mapspace.find(params[:id])
    render :template => "mapspaces/show"
  end
  
  # Importation of Map Data
  def import
    begin
      Mapspace.import(params[:file])
      redirect_to mapspaces_path, notice: "Mapspace Data Loaded."
    rescue
      redirect_to mapspaces_path, notice: "Invalid CSV file format."
    end
  end

# GET /mapspaces/go_north/
  def go_north
    @mapspace = Mapspace.find(params[:id])
#    render :template => "mapspaces/go_north" # Does not work because outputs as HTML
    render json: @mapspace
  end

  def go_south
    @mapspace = Mapspace.find(params[:id])
    render :template => "mapspaces/go_south"
  end

  def go_east
    @mapspace = Mapspace.find(params[:id])
    render :template => "mapspaces/go_east"
  end

  def go_west
    @mapspace = Mapspace.find(params[:id])
    render :template => "mapspaces/go_west"
  end

  private
  # Use of callbacks to setup contraints between actions
  def set_mapspace
   @mapspace = Mapspace.find(params[:id])
  end

  # Allow for use of location_number as row search parameter
  def to_param
   location_number
  end

  def self.find(s)
   self.find_by_location_number(s)
  end
end
