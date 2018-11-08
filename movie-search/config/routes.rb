Rails.application.routes.draw do
  root 'static_pages#index'
  post '/', to: 'movies#search'

end
