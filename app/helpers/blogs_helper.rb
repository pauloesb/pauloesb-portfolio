module BlogsHelper
  def blog_published_time created_at
    "Published " + distance_of_time_in_words(created_at, Time.now) + " ago."
  end

  def show_subtitle subtitle
    content_tag(:h2, subtitle, class: "subheading") unless subtitle.nil?
  end

  def show_published_time created_at
    content_tag(:span, blog_published_time(created_at), class: "meta") unless created_at.nil?
  end
end
