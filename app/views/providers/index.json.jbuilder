json.array!(@providers) do |provider|
  json.extract! provider, :id, :version_id, :name, :box_url
  json.url provider_url(provider, format: :json)
end
