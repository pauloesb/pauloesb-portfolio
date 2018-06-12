module ApplicationHelper
  def login_helper style = "", nl = false
    if current_user.is_a?(GuestUser)
      login_link(style) +
        ("<br>".html_safe if nl) +
        register_link(style)
    else
      logout_link(style)
    end
  end

  def register_link style
    link_to "Register", new_user_registration_path, class: style
  end

  def login_link style
    link_to "Login", new_user_session_path, class: style
  end

  def logout_link style
    link_to "Logout", destroy_user_session_path, method: :delete, class: style
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def set_copyright style = ""
    "<p class='#{style}'>&copy; #{Time.now.year} | <b>Paulo Borba</b> All rights reserved</p>".html_safe
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
    ]
  end

  def nav_helper tag_type: nil, tag_style: nil, link_style: nil
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type} class='#{tag_style}'>" unless tag_type.nil?
      nav_links << "<a href='#{item[:url]}' class='#{link_style} #{active? item[:url]}'>#{item[:title]}</a>"
      nav_links << "</#{tag_type}>" unless tag_type.nil?
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def video_background
    video_tag 'home_bg_video.mp4',
      id: 'background',
      autoplay: true,
      loop: true,
      muted: true,
      poster: 'home_bg.jpg'
  end
end
