Rails.application.routes.draw do

  root 'joins#new'

  devise_for :admins
  resources :joins
  resources :blogs
  devise_for :users

  #Blog
  get 'blogs/new'

  get 'blogs/show'

  get 'blogs/edit'

  get 'blogs/destroy'

  #Join
  get 'joins/index'

  get 'joins/show'

  #Home
  get 'home/contactus'

  get 'home/home'

  get 'home/howitworks'

  get 'home/list'

end
