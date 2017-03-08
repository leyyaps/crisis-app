class Message < MailForm::Base
  attribute :name,      :validate => true
  attribute :mobile,    :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Message Form",
      :to => "andrew.smith@ipsofactouk.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

