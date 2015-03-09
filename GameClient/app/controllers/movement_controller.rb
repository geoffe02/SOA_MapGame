class MovementController < ApplicationController
  require 'curb'
  require 'json'

  def index
    @location = 0 # note: location serves as a kind of "state"
#    http = Curl.post("http://localhost:3002/map#{@location}")
#    result = http.body_str
#    data_hash = JSON.parse(result)
#    message = data_hash['message']
#    status = data_hash['status']
#    jsondata = data_hash['jsondata']
#    @message = message
  end
 
  def go_north
  end

  def go_south
  end
  
  def go_east
  end
 
  def go_west
  end
end
