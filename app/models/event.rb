class Event < ApplicationRecord
  scope :today,    -> { where(date: Date.today)}
  scope :past_now, -> { where('date >= ?', Time.now)}
  scope :latest,   -> { order('date DESC') }
  scope :by_start_date, -> (start_date) { where('date >= ?', start_date)}

  after_update do |event|
    ActionCable.server.broadcast 'events', event
  end
end
