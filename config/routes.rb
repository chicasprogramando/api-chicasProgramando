Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, format: 'json' do
      resources :users, only: [:index, :show, :create] do
        collection do
          get :me
        end
      end
      resources :projects, only: [:index, :show, :create]
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :events, only: [:index, :show]
  end
  
  # El endpoint health está fuera de /api 
  # Se encarga de devolvernos el estado de nuestra api (OK/DOWN) y de la db (OK/DOWN)
  resources :health, to: 'health#health'
  resources :private, to: 'private#private'
end
