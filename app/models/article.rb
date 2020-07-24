class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :body, :title, presence: true
  has_many :comments, dependent: :destroy
  after_create :send_email_campaign
  has_one_attached :image

  def send_email_campaign
    SendEmailCampaignJob.perform_async
  end
end