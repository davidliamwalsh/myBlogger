class SendCommentNotificationJob
  include Sidekiq::Worker

  def perform(comment_id)
    comment = Comment.find(comment_id)
    CommentsMailer.with(comment: comment).created.deliver_now
  end
end