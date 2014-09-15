class EventMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event.event_message.subject
  #
  def event_message
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
