class ReceivedMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.received.new_e_giving.subject
  #
  def new_e_giving
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
