json.array!(@addresses) do |address|
  json.extract! address, :id, :street_line_1, :street_line_2, :city, :state, :zip, :latitude, :longitude
  json.url address_url(address, format: :json)
end
