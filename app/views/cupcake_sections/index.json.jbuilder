json.array!(@cupcake_sections) do |cupcake_section|
  json.extract! cupcake_section, :id, :name
  json.url cupcake_section_url(cupcake_section, format: :json)
end
