# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Kit_session',
  :secret      => '2970145acc2f3ff8e5546930d7e4798d521a834b5e2f8fd879e63aa66cdc4478b4ad6ff46824d0dc58491d3e6fcdcc5b1492d70564bea770413e7c77f2e876e4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
