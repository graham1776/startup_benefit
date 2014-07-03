json.array!(@reccomendations) do |reccomendation|
  json.extract! reccomendation, :id, :benefit_id, :name, :copy, :url, :favicon_url
  json.url reccomendation_url(reccomendation, format: :json)
end
