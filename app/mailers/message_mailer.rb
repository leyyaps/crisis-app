class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_us.subject
  #
  def contact_us(message)
    @message = message
    mail  to: "andrew.smith@ipsofactouk.com",
          subject: "Message from crisisnottingham.com"

  end
end
