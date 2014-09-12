require "rails_helper"

RSpec.describe Staff, :type => :mailer do
  describe "staff_message" do
    let(:mail) { Staff.staff_message }

    it "renders the headers" do
      expect(mail.subject).to eq("Staff message")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
