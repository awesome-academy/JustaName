
require Rails.root.join("lib", "rails_admin", "show_store.rb")
RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::ShowStore)

RailsAdmin.config do |config|
  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.current_user_method(&:current_user)

  config.actions do
    dashboard
    index
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model Product do
     edit do
       # field :title
       include_fields :model, :title, :description, :product_photos, :prices
       field :description, :ck_editor
       # field :model_id
     end
  end

  config.model Price do
     edit do
       # field :title
       include_fields :product_id, :price, :configurations
       # field :model_id
     end
  end

  config.model Order do
    include_fields :status, :user_id, :name, :phone, :province, :district, :address, :order_items
    edit do
      field :status
    end
  end

end
