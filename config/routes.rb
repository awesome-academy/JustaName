Rails.application.routes.draw do
  get 'sessions/new'
  root 'staticpages#home'
  resources :laptops
  devise_for :users,
    controllers:{omniauth_callbacks: "users/omniauth_callbacks"} 



end
# as :user do
#   get "signin" => "devise/sessions#new"
#   post "signin" => "devise/sessions#create"
#   delete "signout" => "devise/sessions#destroy"
# end