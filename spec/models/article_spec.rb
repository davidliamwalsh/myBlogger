require "rails_helper"

RSpec.describe Article do

  describe "When creating an article" do
    it "should call SendEmailCampaign class" do
      create(:article)

      expect(SendEmailCampaignJob).to have_enqueued_sidekiq_job
    end
  end
end
