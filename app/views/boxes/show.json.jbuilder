json.extract! @box, :description, :short_description
json.name "#{@box.user.name}/#{@box.name}"
json.versions @box.versions do |version|
  json.version version.version
  json.status 'active'
  json.extract! version, :description_html, :description_markdown
  json.providers version.providers do |provider|
    json.name provider.name
    json.url user_box_version_provider_url(provider.params)
  end
end
