Rails.application.routes.draw do
  root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'jobs' => 'static_pages#jobs'

  get 'privacy' => 'static_pages#privacy'



  get 'loaderio-0a7e4837e88f50cf53f7be88cd053c92' => 'static_pages#loaderio-0a7e4837e88f50cf53f7be88cd053c92.txt'


  match '/socials',     to: 'socials#new',             via: 'get'
  resources "socials", only: [:new, :create]

  get 'termsandconditions' => 'static_pages#termsandconditions'

  get 'contact_us', to: 'messages#new', as: 'new_message'
  post 'contact_us', to: 'messages#create', as: 'create_message'


  match '/lostproperty', to: 'lost_items#new', via: 'get' 
  resources 'lost_items', only: [:new, :create]
  
  resources :posts,  only: [:show, :index]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :tickets, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
