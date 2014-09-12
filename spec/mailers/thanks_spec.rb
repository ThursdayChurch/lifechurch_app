require "rails_helper"

RSpec.describe Thanks, :type => :mailer do
  describe "thankyou" do
    let(:mail) { Thanks.thankyou }

    it "renders the headers" do
      expect(mail.subject).to eq("Thankyou")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "thankyouus" do
    let(:mail) { Thanks.thankyouus }

    it "renders the headers" do
      expect(mail.subject).to eq("Thankyouus")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "thankyouother" do
    let(:mail) { Thanks.thankyouother }

    it "renders the headers" do
      expect(mail.subject).to eq("Thankyouother")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
