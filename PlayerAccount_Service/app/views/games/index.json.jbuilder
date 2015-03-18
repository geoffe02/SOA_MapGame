json.array!(@games) do |game|
  json.extract! game, :id, :name, :num_kills, :strength_level, :location_number
  json.url game_url(game, format: :json)
end
