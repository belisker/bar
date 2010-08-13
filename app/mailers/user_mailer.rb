class UserMailer < ActionMailer::Base
  default :from => "njeol@hypios.com"
  def welcome_email(user)  
    @user = user 
    @url = "http://example.com/login"  
    mail(:to => "lrodrigues@hypios.com",  
         :subject => "Welcome to My Awesome Site"
    end 
end
