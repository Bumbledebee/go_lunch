class ForwardMessage < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.forward_message.send_message.subject
  #
  def send_message(message)
    @message = message

    mail to: "debbieblass@web.de",
      subject: "Message from GoLunch Visitor"
  end
end
