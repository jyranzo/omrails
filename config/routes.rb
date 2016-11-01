Rails.application.routes.draw do
	get '/users/:username', to: 'users#show', as: 'user'

  resources :skills
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin", to: 'devise/sessions#new'
  	delete "signout", to: 'devise/sessions#destroy'
  	get "signup", to: 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
