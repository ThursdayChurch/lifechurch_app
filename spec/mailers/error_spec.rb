require "rails_helper"

RSpec.describe Error, :type => :mailer do
  describe "found" do
    let(:mail) { Error.found }

    it "renders the headers" do
      expect(mail.subject).to eq("Found")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "_error" do
    let(:mail) { Error._error }

    it "renders the headers" do
      expect(mail.subject).to eq(" error")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
