class Staff < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.staff.staff_message.subject
  #
  def staff_message
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
