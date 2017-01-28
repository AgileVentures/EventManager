Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'events/range', to: 'events#range', :format => false
end
