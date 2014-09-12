class Admin < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin.new_user_waiting_for_approval.subject
  #
  def new_user_waiting_for_approval
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin.let_us_know.subject
  #
  def let_us_know
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
