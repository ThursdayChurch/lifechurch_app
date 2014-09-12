class EventForm < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_form.thank_you_we_have_received.subject
  #
  def thank_you_we_have_received
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_form.new_form_submitted.subject
  #
  def new_form_submitted
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
