require "rails_helper"

RSpec.describe EventForm, :type => :mailer do
  describe "thank_you_we_have_received" do
    let(:mail) { EventForm.thank_you_we_have_received }

    it "renders the headers" do
      expect(mail.subject).to eq("Thank you we have received")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "new_form_submitted" do
    let(:mail) { EventForm.new_form_submitted }

    it "renders the headers" do
      expect(mail.subject).to eq("New form submitted")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
