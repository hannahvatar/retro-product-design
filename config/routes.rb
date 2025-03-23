Rails.application.routes.draw do
  root to: "pages#home"

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "podcast", to: "pages#podcast"
  get 'download/audiobook', to: 'audiobooks#download', as: 'download_audiobook'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
