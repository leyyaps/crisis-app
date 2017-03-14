Rails.application.routes.draw do
  root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'jobs' => 'static_pages#jobs'



  get 'socials' => 'static_pages#socials'

  get 'termsandconditions' => 'static_pages#termsandconditions'

  match '/contact_us',     to: 'messages#new',             via: 'get'
  resources "messages", only: [:new, :create]

  get 'lostproperty', to: 'lost_properties#new', as: 'lostproperty'
  post 'lostproperty', to: 'lost_properties#create'
  
  resources :posts,  only: [:show, :index]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tickets, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
