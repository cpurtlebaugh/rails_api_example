json.array!(@actors) do |actor|
  json.extract! actor, :id, :name, :year_of_birth
  json.url actor_url(actor, format: :json)
end
