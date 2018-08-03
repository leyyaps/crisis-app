class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_us.subject
  #

  def contact_us(message)
    
   @body = message.body
           mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']
           message_params = {:from => message.email,
                             :to => ENV['email'],
                             :subject => message.subject,
                             :text => message.body}
           mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
            
  end

 
end
