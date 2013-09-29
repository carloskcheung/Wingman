json.array!(@messages) do |message|
  json.extract! message, :text, :phone
  json.url message_url(message, format: :json)
end