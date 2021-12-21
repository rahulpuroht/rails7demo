# Preview all emails at http://localhost:3000/rails/mailers/comments_mailer
class CommentsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/comments_mailer/submited
  def submited

    CommentsMailer.submited Comment.last
  end

end
