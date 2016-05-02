json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :description, :website
  json.url partner_url(partner, format: :json)
end
