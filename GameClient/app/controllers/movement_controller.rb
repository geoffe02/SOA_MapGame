class MovementController < ApplicationController
  require 'curb'
  require 'json'

#  respond_to :json

#    @location = 0 # note: location serves as a kind of "state"
  def index
#    @location = 0 # note: location serves as a kind of "state"
#    http = Curl.post("http://localhost:3002/map#{@location}")
#    result = http.body_str
#    data_hash = JSON.parse(result)
#    message = data_hash['message']
#    status = data_hash['status']
#    jsondata = data_hash['jsondata']
#    @message = message
  end
 
  def go_north
    _present_location = 12
    http = Curl.post("http://localhost:3002/mapspaces/go_north",
      "{\"present_location\": #{_present_location} }")
  
    server_reply = http.body_str
    data_hash = JSON.parse(server_reply)
    @location = data_hash['location']
#    _latitude = data_hash['latitude']
#    _longitude = data_hash['longitude']
#    _area_description = data_hash['area']
    
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
