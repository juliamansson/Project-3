json.array!(@flavours) do |flavour|
  json.extract! flavour, :id, :name
  json.url flavour_url(flavour, format: :json)
end
