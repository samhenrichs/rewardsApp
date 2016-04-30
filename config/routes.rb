Rails.application.routes.draw do

  devise_for :admins
  resources :joins

  get 'joins/index'

  devise_for :users

  root 'home#about'

  get 'home/admin'
  
  get 'home/index'

  get 'home/list'

  get 'home/about'

  get 'home/terms'

end
