Rails.application.routes.draw do
  resources :projects

  root 'projects#index'

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

end
