Rails.application.routes.draw do
  root 'staticpages#home'
  resources :laptops, only: [:new, :create, :show, :destroy]
end
