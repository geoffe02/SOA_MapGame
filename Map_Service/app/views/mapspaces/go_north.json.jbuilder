#json.extract! @mapspace, :north_adjoin, :name, :latitude, :longitude
json.new_location @mapspace.north_adjoin
json.name @mapspace.name
json.latitude @mapspace.latitude
json.longitude @mapspace.longitude
