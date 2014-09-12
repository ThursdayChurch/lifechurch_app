require "rails_helper"

RSpec.describe Contact, :type => :mailer do
  describe "site_message" do
    let(:mail) { Contact.site_message }

    it "renders the headers" do
      expect(mail.subject).to eq("Site message")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
