json.array!(@benefits) do |benefit|
  json.extract! benefit, :id, :name, :category_id, :copy
  json.url benefit_url(benefit, format: :json)
end
