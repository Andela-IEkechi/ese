class NewsletterMailer < ApplicationMailer
  def newsletter_created(newsletter)
    @newsletter = newsletter
    @articles = Article.this_week
    @users = User.all
    @date = Date.today
    @url  = "https://esewalter.com/article/"
    # attachments.inline['logo.png'] = File.read(File.join(Rails.root, 'app','assets', 'images', 'logo.png'))
    # attachments.inline['signature.png'] = File.read(File.join(Rails.root, 'app','assets', 'images', 'signature.png'))
    @users.each do |user|
      mail(to: user.email, subject: 'Femina Speaks Newsletter')
    end
  end
end
