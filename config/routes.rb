Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    resources :comments
  end
  authenticated :user do
    root to:'articles#index', as: :authenticated_root
  end
  unauthenticated do
    root to: 'devise/sessions#new', as: :unauthenticated_root
  end
  
end
