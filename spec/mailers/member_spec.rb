require "rails_helper"

RSpec.describe Member, :type => :mailer do
  describe "your_approved" do
    let(:mail) { Member.your_approved }

    it "renders the headers" do
      expect(mail.subject).to eq("Your approved")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "welcome_email" do
    let(:mail) { Member.welcome_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome email")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "send_using_Mandrill" do
    let(:mail) { Member.send_using_Mandrill }

    it "renders the headers" do
      expect(mail.subject).to eq("Send using mandrill")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
