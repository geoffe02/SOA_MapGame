class MovementController < ApplicationController
  require 'json'
  require 'net/http'
  require 'uri'

  SERVER_BASE_URL = "http://localhost:3002"
  ENCOUNTER_SERVER_BASE_URL = "http://localhost:3003"
  $current_location = 99 # global variable seen (and updated by) each def

  def index
  end

  def start_spot # Setting Location to an initial value.
    $current_location = 45
    render :index
  end
  
  def fight
  end
  
  def go_north
    _present_location = $current_location
    request_parameters = "mapspaces\/#{_present_location}/go_north"
    server_request = "#{SERVER_BASE_URL}\/#{request_parameters}"
#    server_reply = Net::HTTP.get_response(URI.parse("http://localhost:3002/mapspaces/45/go_north"))
    
    server_reply = Net::HTTP.get_response(URI.parse(server_request))
    payload = server_reply.body
    @location = JSON.parse(payload)['north_adjoin']
    @message = JSON.parse(payload)['name']
    @latitude = JSON.parse(payload)['latitude']
    @longitude = JSON.parse(payload)['longitude']
    
    $current_location = @location # update to new location
    
    # Contact Encounter Service to see if Monsters are present.
    encounter_location = $current_location
    encounter_request_parameters = "monsters\/#{encounter_location}"
    encounter_server_request = "#{ENCOUNTER_SERVER_BASE_URL}\/#{encounter_request_parameters}"
    
    encounter_server_reply = Net::HTTP.get_response(URI.parse(encounter_server_request))
    encounter_payload = encounter_server_reply.body
    @monster_name = JSON.parse(encounter_payload)['name']
    @monster_description = JSON.parse(encounter_payload)['description']
    @monster_strength = JSON.parse(encounter_payload)['strength']
    
    
    render :index
  end

  def go_south
    _present_location = $current_location
    request_parameters = "mapspaces\/#{_present_location}/go_south"
    server_request = "#{SERVER_BASE_URL}\/#{request_parameters}"
    
    server_reply = Net::HTTP.get_response(URI.parse(server_request))
    payload = server_reply.body
    @location = JSON.parse(payload)['south_adjoin']
    @message = JSON.parse(payload)['name']
    @latitude = JSON.parse(payload)['latitude']
    @longitude = JSON.parse(payload)['longitude']
    
    $current_location = @location # update to new location
    
    # Contact Encounter Service to see if Monsters are present.
    encounter_location = $current_location
    encounter_request_parameters = "monsters\/#{encounter_location}"
    encounter_server_request = "#{ENCOUNTER_SERVER_BASE_URL}\/#{encounter_request_parameters}"
    
    encounter_server_reply = Net::HTTP.get_response(URI.parse(encounter_server_request))
    encounter_payload = encounter_server_reply.body
    @monster_name = JSON.parse(encounter_payload)['name']
    @monster_description = JSON.parse(encounter_payload)['description']
    @monster_strength = JSON.parse(encounter_payload)['strength']
    
    render :index
  end
  
  def go_east
    _present_location = $current_location
    request_parameters = "mapspaces\/#{_present_location}/go_east"
    server_request = "#{SERVER_BASE_URL}\/#{request_parameters}"
    
    server_reply = Net::HTTP.get_response(URI.parse(server_request))
    payload = server_reply.body
    @location = JSON.parse(payload)['east_adjoin']
    @message = JSON.parse(payload)['name']
    @latitude = JSON.parse(payload)['latitude']
    @longitude = JSON.parse(payload)['longitude']
    
    $current_location = @location # update to new location
    
    # Contact Encounter Service to see if Monsters are present.
    encounter_location = $current_location
    encounter_request_parameters = "monsters\/#{encounter_location}"
    encounter_server_request = "#{ENCOUNTER_SERVER_BASE_URL}\/#{encounter_request_parameters}"
    
    encounter_server_reply = Net::HTTP.get_response(URI.parse(encounter_server_request))
    encounter_payload = encounter_server_reply.body
    @monster_name = JSON.parse(encounter_payload)['name']
    @monster_description = JSON.parse(encounter_payload)['description']
    @monster_strength = JSON.parse(encounter_payload)['strength']
    
    render :index
  end
 
  def go_west
    _present_location = $current_location
    request_parameters = "mapspaces\/#{_present_location}/go_west"
    server_request = "#{SERVER_BASE_URL}\/#{request_parameters}"
    
    server_reply = Net::HTTP.get_response(URI.parse(server_request))
    payload = server_reply.body
    @location = JSON.parse(payload)['west_adjoin']
    @message = JSON.parse(payload)['name']
    @latitude = JSON.parse(payload)['latitude']
    @longitude = JSON.parse(payload)['longitude']
    
    $current_location = @location # update to new location
    
    # Contact Encounter Service to see if Monsters are present.
    encounter_location = $current_location
    encounter_request_parameters = "monsters\/#{encounter_location}"
    encounter_server_request = "#{ENCOUNTER_SERVER_BASE_URL}\/#{encounter_request_parameters}"
    
    encounter_server_reply = Net::HTTP.get_response(URI.parse(encounter_server_request))
    encounter_payload = encounter_server_reply.body
    @monster_name = JSON.parse(encounter_payload)['name']
    @monster_description = JSON.parse(encounter_payload)['description']
    @monster_strength = JSON.parse(encounter_payload)['strength']
    
    render :index
  end
  

end
