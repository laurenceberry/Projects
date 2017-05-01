Rails.application.routes.draw do
  get '/about'     => 'pages#about'
  get '/scrapbook' => 'projects#scrapbook'
  get '/weeknotes' => 'projects#weeknotes'

  root 'projects#index'

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

  resources :projects, path: ""

end
