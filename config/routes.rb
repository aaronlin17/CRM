Rails.application.routes.draw do
  # resources :customers do
  #   member do
  #     get 'customers/index'
  #     get 'customers/alphabetized'
  #     get 'customers/missing_email'
  #   end
  # end

  get 'customers/index'
  get 'customers/alphabetized'
  get 'customers/missing_email'
  root to: 'customers#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
