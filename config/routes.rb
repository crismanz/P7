Rails.application.routes.draw do
  get 'site/contacts'
  root to: 'site#home'
  get 'site/home'

  resources :riders
  resources :slogans
  resources :photos
  resources :location
  resources :contacts
end
