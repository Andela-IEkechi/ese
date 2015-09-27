class NewsletterMailer < ApplicationMailer
  def newsletter_created(newsletter)
    @newsletter = newsletter
    @articles = Article.this_week.order(created_at: :desc)
    @users = User.all
    @date = Date.today.strftime("%b %d, %Y")
    @url  = "https://esewalter.com/articles/"
    attachments.inline['femina.png'] = File.read(File.join(Rails.root, 'app','assets', 'images', 'femina-speaks.png'))
    attachments.inline['facebook.png'] = File.read(File.join(Rails.root, 'app','assets', 'images', 'facebook.png'))
    attachments.inline['google_buzz.png'] = File.read(File.join(Rails.root, 'app','assets', 'images', 'google_buzz.png'))
    attachments.inline['twitter.png'] = File.read(File.join(Rails.root, 'app','assets', 'images', 'twitter.png'))
    @users.each do |user|
      mail(to: user.email, subject: 'Femina Speaks Newsletter')
    end
  end
end
