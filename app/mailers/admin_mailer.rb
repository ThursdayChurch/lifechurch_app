class AdminMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin.new_user_waiting_for_approval.subject
  #
  def new_user_waiting_for_approval(member)
    @member = member
    mail(:subject => "#{member.name} - Approval Needed")
  end
  
  
  def let_us_know(member)
    @member = member
    mail(:subject => "#{member.name} - Would like to be a volunteer")
  end
  
  
end
