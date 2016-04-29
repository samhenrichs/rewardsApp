Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  get 'home/index'

  get 'home/list'

  get 'home/about'

  get 'home/terms'
  
end
