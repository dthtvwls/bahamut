json.extract! @box, :description, :short_description
json.name "#{@box.user.name}/#{@box.name}"
json.versions @box.versions do |version|
  json.version version.version
  json.status 'active'
  json.extract! version, :description_html, :description_markdown
  json.providers version.providers do |provider|
    json.extract! provider, :name, :url
  end
end
