module BlogsHelper
  def blog_published_time created_at
    "Published " + distance_of_time_in_words(created_at, Time.now) + " ago."
  end

  def show_subtitle subtitle
    content_tag(:h2, subtitle, class: "subheading") unless subtitle.nil?
  end

  def show_topic topic
    content_tag(:span, topic, class: "meta") unless topic.nil?
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

  def delete_btn blog
    link_to "Delete", blog, method: :delete, class: "btn btn-link" if logged_in? :site_admin
  end

  def blog_topic_id blog
    if blog.topic
      blog.topic.id
    else
      "1"
    end
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end

  def markdown text
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

    options = {
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true,
    }

    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end
end
