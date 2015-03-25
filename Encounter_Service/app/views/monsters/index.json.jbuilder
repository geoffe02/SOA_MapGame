json.array!(@monsters) do |monster|
  json.extract! monster, :id, :location, :name, :description, :strength
  json.url monster_url(monster, format: :json)
end
