class Comment < ApplicationRecord
  belongs_to :article
  validates :name, :body, presence: true
  after_create :send_comment_notification

  def send_comment_notification
    SendCommentNotificationJob.perform_async(id)
  end
end