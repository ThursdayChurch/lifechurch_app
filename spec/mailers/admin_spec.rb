require "rails_helper"

RSpec.describe Admin, :type => :mailer do
  describe "new_user_waiting_for_approval" do
    let(:mail) { Admin.new_user_waiting_for_approval }

    it "renders the headers" do
      expect(mail.subject).to eq("New user waiting for approval")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "let_us_know" do
    let(:mail) { Admin.let_us_know }

    it "renders the headers" do
      expect(mail.subject).to eq("Let us know")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
