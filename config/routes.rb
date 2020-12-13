Rails.application.routes.draw do
  devise_for :users,
    controllers:{omniauth_callbacks: "users/omniauth_callbacks"}
  root 'staticpages#home'

  resources :laptops, only: [:new, :create, :show, :index, :destroy]

  get '/macbook', to: "laptops#macbook"
  get '/macbook-pro', to: "laptops#macbook_pro"
  get '/macbook-air', to: "laptops#macbook_air"
  get '/macbook-pro-2020', to: "laptops#macbook_pro_2020"
  get '/macbook-pro-2019', to: "laptops#macbook_pro_2019"
  get '/macbook-pro-2018', to: "laptops#macbook_pro_2018"
  get '/macbook-pro-2017', to: "laptops#macbook_pro_2017"
  get '/macbook-pro-2016', to: "laptops#macbook_pro_2016"
  get '/macbook-pro-2015', to: "laptops#macbook_pro_2015"
  get '/macbook-pro-2014', to: "laptops#macbook_pro_2014"
  get '/macbook-pro-m1', to: "laptops#macbook_pro_m1"
  get '/macbook-air-2020', to: "laptops#macbook_air_2020"
  get '/macbook-air-2019', to: "laptops#macbook_air_2019"
  get '/macbook-air-2018', to: "laptops#macbook_air_2018"
  get '/macbook-air-2017', to: "laptops#macbook_air_2017"
  get '/macbook-air-2016', to: "laptops#macbook_air_2016"
  get '/macbook-air-2015', to: "laptops#macbook_air_2015"
  get '/macbook-air-2014', to: "laptops#macbook_air_2014"
  get '/macbook-air-m1', to: "laptops#macbook_air_m1"

  get '/surface', to: "laptops#surface"
  get '/surface-pro', to: "laptops#surface_pro"
  get '/surface-laptop', to: "laptops#surface_laptop"
  get '/surface-book', to: "laptops#surface_book"
  get '/surface-go', to: "laptops#surface_go"
  get '/surface-pro-7', to: "laptops#surface_pro_7"
  get '/surface-pro-6', to: "laptops#surface_pro_6"
  get '/surface-pro-5', to: "laptops#surface_pro_5"
  get '/surface-pro-4', to: "laptops#surface_pro_4"
  get '/surface-pro-x', to: "laptops#surface_pro_x"
  get '/surface-laptop-3', to: "laptops#surface_laptop_3"
  get '/surface-laptop-2', to: "laptops#surface_laptop_2"
  get '/surface-laptop-1', to: "laptops#surface_laptop_1"
  get '/surface-laptop-go', to: "laptops#surface_laptop_go"
  get '/surface-book-3', to: "laptops#surface_book_3"
  get '/surface-book-2', to: "laptops#surface_book_2"
  get '/surface-book-1', to: "laptops#surface_book_1"
  get '/surface-go-2', to: "laptops#surface_go_2"
  get '/surface-go-1', to: "laptops#surface_go_1"

  get '/dell', to: "laptops#dell"
  get '/dell-alienware', to: "laptops#dell_alienware"
  get '/dell-inspiron', to: "laptops#dell_inspiron"
  get '/dell-precision', to: "laptops#dell_precision"
  get '/dell-gaming', to: "laptops#dell_gaming"
  get '/dell-latitude', to: "laptops#dell_latitude"
  get '/dell-xps', to: "laptops#dell_xps"

  get '/razer', to: "laptops#razer"
  get '/razer-blade-stealth-13', to: "laptops#razer_blade_stealth_13"
  get '/razer-blade-15', to: "laptops#razer_blade_15"
  get '/razer-blade-pro-17', to: "laptops#razer_blade_pro_17"

  get '/asus', to: "laptops#asus"
  get '/asus-expertbook', to: "laptops#asus_expertbook"
  get '/asus-vivobook', to: "laptops#asus_vivobook"
  get '/asus-gaming', to: "laptops#asus_gaming"
  get '/asus-zenbook', to: "laptops#asus_zenbook"

  get '/lg', to: "laptops#lg"
  get '/lg-gram', to: "laptops#lg_gram"

  get '/hp', to: "laptops#hp"
  get '/hp-elitebook', to: "laptops#hp_elitebook"
  get '/hp-pavilion', to: "laptops#hp_pavilion"
  get '/hp-spectre', to: "laptops#hp_spectre"
  get '/hp-envy', to: "laptops#hp_envy"
  get '/hp-probook', to: "laptops#hp_probook"
  get '/hp-zbook', to: "laptops#hp_zbook"

  get '/acer', to: "laptops#acer"
  get '/acer-aspire', to: "laptops#acer_aspire"
  get '/acer-predator', to: "laptops#acer_predator"
  get '/acer-nitro', to: "laptops#acer_nitro"
  get '/acer-swift', to: "laptops#acer_swift"

  get '/lenovo', to: "laptops#lenovo"
  get '/lenovo-ideapad', to: "laptops#lenovo_ideapad"
  get '/lenovo-thinkpad', to: "laptops#lenovo_thinkpad"
  get '/lenovo-thinkpad-x', to: "laptops#lenovo_thinkpad_x"
  get '/lenovo-legion', to: "laptops#lenovo_legion"
  get '/lenovo-thinkpad-t', to: "laptops#lenovo_thinkpad_t"
  get '/lenovo-workstation', to: "laptops#lenovo_workstation"

  get '/msi', to: "laptops#msi"
  get '/msi-gaming', to: "laptops#msi_gaming"

end
# as :user do
#   get "signin" => "devise/sessions#new"
#   post "signin" => "devise/sessions#create"
#   delete "signout" => "devise/sessions#destroy"
# end