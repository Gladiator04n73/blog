Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    resources :comments
  end
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  root to: "articles#index"
  
end
