Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, ENV['API_KEY'], ENV['API_SECRET']
	provider :facebook, ENV["FACEBOOK_ID"], ENV["FACEBOOK_SECRET"], scope: 'email,publish_actions'
end