class ContactFormMailer < ApplicationMailer

  def contact_notification
    @message = params[:message]
    mail(to: 'coding@davidwalsh.co.uk', subject: 'Contact form Blogger')
  end
end