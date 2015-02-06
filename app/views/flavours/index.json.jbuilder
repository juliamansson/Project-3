json.array!(@flavours) do |flavour|
  json.extract! flavour, :id, :cupcake_section_id, :name
  json.url flavour_url(flavour, format: :json)
end
