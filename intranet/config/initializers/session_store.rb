# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cfm-intranet_session',
  :secret      => '75ec3a43c98ee42e8376404404d2c0374b4782e16571a50766f2725358f66067d460881e42f9e35a7d576e120bb2d6166f3e7961cc4d183a576d82c9496cb86a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
