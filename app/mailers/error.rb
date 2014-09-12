class Error < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.error.found.subject
  #
  def found
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.error._error.subject
  #
  def _error
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
