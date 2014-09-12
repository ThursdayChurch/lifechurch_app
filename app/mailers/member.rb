class Member < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.member.your_approved.subject
  #
  def your_approved
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.member.welcome_email.subject
  #
  def welcome_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.member.send_using_Mandrill.subject
  #
  def send_using_Mandrill
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
