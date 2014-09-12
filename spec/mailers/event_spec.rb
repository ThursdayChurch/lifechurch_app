require "rails_helper"

RSpec.describe Event, :type => :mailer do
  describe "event_message" do
    let(:mail) { Event.event_message }

    it "renders the headers" do
      expect(mail.subject).to eq("Event message")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
