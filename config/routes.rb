Rails.application.routes.draw do
  root to: "pages#home"

  get "about", to: "pages#about"
  get "about-project", to: "pages#about-project"
  get "contact", to: "pages#contact"
  get "podcast", to: "pages#podcast"
  get 'download/:filename', to: 'files#download', as: :download_file

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check
end
