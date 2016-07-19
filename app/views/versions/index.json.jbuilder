json.array!(@versions) do |version|
  json.extract! version, :id, :box_id, :version, :description_html, :description_markdown
  json.url version_url(version, format: :json)
end
