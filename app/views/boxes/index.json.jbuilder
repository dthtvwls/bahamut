json.array!(@boxes) do |box|
  json.extract! box, :id, :user_id, :description, :short_description, :name
  json.url box_url(box, format: :json)
end
