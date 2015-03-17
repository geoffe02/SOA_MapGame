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

# GET /mapspaces/go_north/
  def go_north
#    _present_location = @location

    server_receive = http.body_str
    data_hash = JSON.parse(server_receive)
    _present_location = data_hash['location']
    _next_location = _present_location + 1

    http = Curl.post("http://localhost:3000/movement/go_north",
	"{\present_location\": #{_next_location} }")

#    http = Curl.post("http://localhost:3002/directions",
#     "{\"present_location\": #{_present_location},\"direction\":\"north\" }"
#    render :index
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
