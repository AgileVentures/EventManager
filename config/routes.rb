Rails.application.routes.draw do

  # mount ActionCable.server => '/cable'

  get 'events/example', to: 'events#example'

  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
