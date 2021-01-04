
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
      include_fields :title, :description, :model, :prices, :product_photos
      field :description, :ck_editor
    end
  end
end
