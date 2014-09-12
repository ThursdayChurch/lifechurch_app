require "rails_helper"

RSpec.describe Received, :type => :mailer do
  describe "new_e_giving" do
    let(:mail) { Received.new_e_giving }

    it "renders the headers" do
      expect(mail.subject).to eq("New e giving")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
