json.array!(@messages) do |message|
  json.extract! message, :id, :from, :of, :phone, :cell_phone, :message, :telephoned, :returned_your_call, :please_call, :please_call, :will_call_again, :came_to_see_you, :wants_to_see_you, :other, :other_text, :boolean, :signed
  json.url message_url(message, format: :json)
end
