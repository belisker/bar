ActionMailer::Base.smtp_settings = {
  :adresse              => "smtp.yahoo.com",
  :port                 => 587,
  :domain               => "railscast.com",
  :user_name            => "aatest92",
  :password             => "aaaaaa",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"