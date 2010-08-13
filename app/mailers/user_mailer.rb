class UserMailer < ActionMailer::Base
 def registration_confirmation(user)
   default :from => "aatest92@yahoo.com"
   mail(:to => user.mail, :subject => "Order alcool")
 end
end
