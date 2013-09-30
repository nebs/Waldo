OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, AppConfig['FACEBOOK_KEY'], AppConfig['FACEBOOK_SECRET']
end
