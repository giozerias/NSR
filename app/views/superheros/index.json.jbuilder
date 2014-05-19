json.array!(@superheros) do |superhero|
  json.extract! superhero, :id, :name, :city, :superpower, :superscore
  json.url superhero_url(superhero, format: :json)
end
