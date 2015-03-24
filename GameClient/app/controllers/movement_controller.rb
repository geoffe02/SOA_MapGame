class MovementController < ApplicationController
  require 'curb'
  require 'json'
  require 'net/http'
  require 'uri'

#  respond_to :json

#  $server_reply

  def index
    # grab any changes to data_hash
#    data_hash = JSON.parse($server_reply) 
#    @location = data_hash['new_location']
#    @message = data_hash['name']
#    @latitude = data_hash['latitude']
#    @longitude = data_hash['longitude']
  end

  def start_spot
    @location = 50
    render :index
  end
 
  def go_north
    _present_location = @location
    server_reply = Curl.get("http://localhost:3002/mapspaces/#{_present_location}/go_north")
    
#    server_reply = Net::HTTP.get_response(URI.parse("http://localhost:3002/mapspaces/#{_present_location}/go_north"))
    payload = server_reply.body_str
#    @result = JSON.parse(server_reply, :symbolize_names => true)
    myhash = JSON.parse(payload)
    @location = myhash['new_location']
    @message = myhash['name']
    @latitude = myhash['latitude']
    @longitude = myhash['longitude']
    
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
