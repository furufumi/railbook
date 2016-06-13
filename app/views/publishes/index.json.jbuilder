json.array!(@publishes) do |publish|
  json.extract! publish, :id, :publishname, :address
  json.url publish_url(publish, format: :json)
end
