class Event < ApplicationRecord
  after_update do |event|
    ActionCable.server.broadcast 'events', event
  end
end
