module ArticlesHelper
  def parallax_pic(article)
    case
      when article.section == "Monday Mummies"
        image_tag "mummies.jpg", size: "1200x600"
      when article.section == "Abuse No More"
        image_tag "no_more.jpg", size: "1200x600"
      when article.section == "Child Abuse"
        image_tag "child_abuse.jpg", size: "1200x600"
      else
        image_tag "family.jpg", size: "1200x600"
    end
  end
end
