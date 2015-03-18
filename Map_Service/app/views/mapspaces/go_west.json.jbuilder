#json.extract! @mapspace, :west_adjoin, :name, :latitude, :longitude
json.new_location @mapspace.west_adjoin
json.name @mapspace.name
json.latitude @mapspace.latitude
json.longitude @mapspace.longitude
