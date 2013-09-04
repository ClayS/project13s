# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Project13::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] : 'b8295db19fac90e394d33ba6e524c90d6774a04699ce1d92935bdfbe16e32c1c8ad92a3d1b281dfa1dd1e6d78442c8d9834e3c45f3f1b2185b00d266c7081b81'
