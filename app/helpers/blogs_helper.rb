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

  def new_post_btn
    link_to "New Post",
      new_blog_path,
      id: "blog-btn-new-post",
      class: "btn btn-primary btn-block" if logged_in? :site_admin
  end

  def img_asset_path img
    asset_path img unless img.nil?
  end

  def back_btn
    link_to "Back", blogs_path, class: "btn btn-link"
  end

  def edit_btn blog
    link_to "Edit", edit_blog_path(blog), class: "btn btn-link" if logged_in? :site_admin
  end

  def show_btn blog
    link_to "Show", blog, class: "btn btn-link"
  end
end
