class Thanks < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanks.thankyou.subject
  #
  def thankyou
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanks.thankyouus.subject
  #
  def thankyouus
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.thanks.thankyouother.subject
  #
  def thankyouother
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
