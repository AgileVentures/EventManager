class Event < ApplicationRecord
  scope :today,    -> { where(date: Date.today)}
  scope :past_now, -> { where('date >= ?', Time.now)}

  after_update do |event|
    ActionCable.server.broadcast 'events', event
  end
end
