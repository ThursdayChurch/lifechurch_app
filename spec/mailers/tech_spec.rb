require "rails_helper"

RSpec.describe Tech, :type => :mailer do
  describe "tech_support" do
    let(:mail) { Tech.tech_support }

    it "renders the headers" do
      expect(mail.subject).to eq("Tech support")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
