#json.extract! @mapspace, :east_adjoin, :name, :latitude, :longitude
json.new_location @mapspace.east_adjoin
json.name @mapspace.name
json.latitude @mapspace.latitude
json.longitude @mapspace.longitude
