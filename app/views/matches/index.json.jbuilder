json.array!(@matches) do |match|
  json.extract! match, :id, :hero_a_id, :hero_b_id, :hero_a_score, :hero_b_score
  json.url match_url(match, format: :json)
end
