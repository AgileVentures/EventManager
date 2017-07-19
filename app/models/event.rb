class Event < ApplicationRecord
  scope :today,    -> { where(start_date: Date.today)}
  scope :past_now, -> { where('start_date >= ?', Time.now)}
  scope :latest,   -> { order('start_date DESC') }
  scope :by_start_date, -> (start_date) { where('start_date >= ?', start_date)}

  after_update do |event|
    ActionCable.server.broadcast 'events', event
  end
end
