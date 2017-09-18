# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Tracking inventory levels in the application
  config.track_inventory_levels = true
  config.currency = "EUR"
  config.admin_products_per_page = 30
  config.always_put_site_name_in_title = true
  config.company = false

  
end


Spree.user_class = "Spree::User"

# Set currency position position 
Spree::Money.default_formatting_rules[:symbol_position] = :after

# Fix Log in translation
Spree::UserSessionsController.class_eval do
  include SpreeI18n::ControllerLocaleHelper
end

### LOCALES ###
# Set default local to FR
I18n.default_locale = :'fr'
# Displayed on frontend select box
SpreeI18n::Config.available_locales = [:en, :fr, :es]
# Displayed on translation forms
SpreeGlobalize::Config.supported_locales = [:en, :fr, :es] 


