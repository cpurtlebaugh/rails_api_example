json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :summary
  json.url movie_url(movie, format: :json)
end
