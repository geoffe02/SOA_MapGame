class MapspacesController < ApplicationController
  respond_to :json

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

  def go_north
    _present_location = @location
    http = Curl.post("http://localhost:3002/directions",
      "{\"present_location\": #{_present_location},\"direction\":\"north" }"

    server_reply = http.body_str
    data_hash = JSON.parse(server_reply)
    _new_location = data_hash['location']
    _latitude = data_hash['latitude']
    _longitude = data_hash['longitude']
    _area_description = data_hash['area']

    render :index
  end

  def go_south
    render :index
  end

  def go_east
    render :index
  end

  def go_west
    render :index
  end
end
