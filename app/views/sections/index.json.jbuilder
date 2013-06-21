json.array!(@sections) do |section|
  json.extract! section, :name
  json.url section_url(section, format: :json)
end