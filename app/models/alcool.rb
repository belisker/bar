class Alcool < ActiveRecord::Base
    def contact
      @alcool = Alcool.find(params[:id])
      @subject = "command"
      @recipients = "njeol@hypios.com"
      @from = 'lrodrigues@hypios.com'
      @sent_on = sent_at
      	@body["title"] = "command of @alcool.name"
      	@body["email"] = 'njeol@hypios.com'
     	  @body["message"] = "buy @alcool.quantity_command"
      @headers = {}
    end
end
