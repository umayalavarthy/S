# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SaiMedha::Application.initialize!



SaiMedha::Application.configure do
	#devise
config.action_mailer.default_url_options = { :host => 'http://gatesaimedha.com' }
#action mailer
config.action_mailer.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => "saimedha8@gmail.com",
  :password             => "gatesaimedha",
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}
end
