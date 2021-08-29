# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :books
  resources :rooms, only: %i[ show ] do
    resources :messages, shallow: true, only: %i[ create edit update destroy show ]
  end


  delete '/logout', to: 'user_session#destroy'

  root 'books#index'
end
