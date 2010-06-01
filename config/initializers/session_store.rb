# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_university-bookstore_session',
  :secret      => 'ddf1654f4ddbe786b1efd8c643a5beb5fc4ff9ccfffd46652f5fcf14e518e98fd1c21198d874dc503aeb43733976e9cb8ba6341ee230d301c33f5b33798ced46'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
