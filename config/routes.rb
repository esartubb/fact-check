Rails.application.routes.draw do
  devise_for :users

  root 'user#index'

  get 'user/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
  		resources :submissions, only: [:create]
  	end
  end
end
