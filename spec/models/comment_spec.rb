require "rails_helper"

RSpec.describe Comment do
  describe "When creating a comment" do
    before do
      create(:article, :with_comments)
    end

    it "should queue a worker to send the email" do
      expect(SendCommentNotificationJob.jobs.size).to eq 1
    end
  end
end