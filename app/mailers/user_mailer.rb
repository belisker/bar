class UserMailer < ActionMailer::Base
 def registration_confirmation(alcool)
   default :from => "aatest92@yahoo.com"
   mail(:to => "aatest92@yahoo.com", :subject => "Order alcool")
 end
end
