class LostPropertyMailer < ActionMailer::Base

  default from: "Your Mailer <andrew.smith@ipsofactouk.com>"
  default to: "Your Name <andrew.smith@ipsofactouk.com>"

  def new_message(message)
    @message = message
      
    mail subject: "Lost Property from #{message.name}"
  end
end
