json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :pet_name, :pet_breed, :pet_color, :observation, :location_x, :location_y, :picture, :user_id
  json.url entry_url(entry, format: :json)
end
