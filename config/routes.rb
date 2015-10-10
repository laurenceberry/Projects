Rails.application.routes.draw do
  resources :projects

  root 'pages#index'

end
