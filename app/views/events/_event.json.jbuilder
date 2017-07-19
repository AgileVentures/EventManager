json.extract! event, :id, :name, :start_date, :duration, :live, :created_at, :updated_at
json.url event_url(event, format: :json)