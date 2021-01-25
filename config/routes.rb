Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: {
      omniauth_callbacks: "users/omniauth_callbacks",
      sessions: 'users/sessions'
    }
  post 'orders/paypal/create_payment'  => 'orders#paypal_create_payment', as: :paypal_create_payment
  post 'orders/paypal/execute_payment'  => 'orders#paypal_execute_payment', as: :paypal_execute_payment
  
  get 'pages/home', to: 'static_pages#home'
  get 'pages/help', to: 'static_pages#help'
  get 'pages/review', to: 'static_pages#review'
  resources :reviews, only: [:create, :destroy, :show, :new, :index] do
    collection do
      get :autocomplete
    end
    resources :comments, only: [:index, :create]
  end

  namespace :admin do
    resources :users
  end

  resources :products, only: [:show, :index] do
    resources :comments, only: [:create, :destroy]
    resources :rates
  end

  get 'cart', to: 'carts#show'

  resources :orders, only: [:create, :index, :show]

  resources :payments do
    collection do
      get :success
      get :cancel
      post :notify
      get :close_popup
    end
  end

end
# as :user do
#   get "signin" => "devise/sessions#new"
#   post "signin" => "devise/sessions#create"
#   delete "signout" => "devise/sessions#destroy"
# end
