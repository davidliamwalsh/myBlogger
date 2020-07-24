class CommentsMailer < ActionMailer::Base
  def created
    @comment = params[:comment]

    mail(
      subject: 'New Comment',
      to: 'coding@davidwalsh.co.uk',
      from: 'coding@davidwalsh.co.uk'
    )
  end
end