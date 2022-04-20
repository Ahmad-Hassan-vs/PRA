Rails.application.routes.draw do
  resources :lists
root 'lists#index'
put 'crossoff', to: 'lists#crossoff', as: :crossoff
delete 'trash', to: 'home#trash', as: :trash
delete 'trash_all', to: 'home#trash_all', as: :trash_all
get 'offline', to: 'home#offline', as: :offline
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
end
