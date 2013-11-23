# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
  end
end

SampleAp::Application.config.secret_key_base = secure_token




#SampleAp::Application.config.secret_key_base = '50649e342624e45dd05701739c8196fb1a873b029959322912ac3f266e7d9bfa16517e156819c112e0251e94435ae511821b2262a601c6fa520fcba127e2187b'
