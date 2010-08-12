class Emailer < ActionMailer::Base
  def contact(recipient, subject, message, sent_at = Time.now)
   @subject = order @alcool.name
   @provider = provider
   @from = 'no-reply@yourdomain.com'
   @sent_on = sent_at
 	 @body["title"] = 'This is title'
	 @body["email"] = 'name_bar@yahoo.com'
	 @body["message"] = message
   @headers = {}
    end
end
