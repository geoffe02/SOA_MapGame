#json.extract! @mapspace, :south_adjoin, :name, :latitude, :longitude
json.new_location @mapspace.south_adjoin
json.name @mapspace.name
json.latitude @mapspace.latitude
json.longitude @mapspace.longitude
