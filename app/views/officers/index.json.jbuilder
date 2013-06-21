json.array!(@officers) do |officer|
  json.extract! officer, :rank, :name
  json.url officer_url(officer, format: :json)
end