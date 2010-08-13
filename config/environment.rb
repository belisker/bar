# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ManageBar::Application.initialize!

ActionMailer::Base.delivery_method = :sendmail

ActionMailer::Base.smtp_settings = {
   :address => "smtp.tutorialspoint.com",
   :port => 25,
   :domain => "tutorialspoint.com",
   :authentication => :login,
   :user_name => "username",
   :password => "password",
}
