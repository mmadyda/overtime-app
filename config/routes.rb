Rails.application.routes.draw do
  resources :audit_logs
  namespace :admin do
    resources :admin_users
    resources :posts
    resources :users

    root to: "admin_users#index"
  end

  resources :posts
  devise_for :users, skip: [:registrations]
  root to: 'static#homepage'
end
