module ApplicationHelper
  def login_helper style = "", ctag = false
    if current_user.is_a?(GuestUser)
      login_ctag style, ctag
    else
      logout_ctag style, ctag
    end
  end

  def login_ctag style, ctag
    if ctag
      content_tag(:li, register_link(style), class: "nav-item") +
        content_tag(:li, login_link(style), class: "nav-item")
    else
      register_link(style) + login_link(style)
    end
  end

  def logout_ctag style, ctag
    if ctag
      content_tag(:li, login_link(style), class: "nav-item")
    else
      logout_link style
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

  def set_copyright
    "<p>&copy; #{Time.now.year} | <b>Paulo Borba</b> All rights reserved</p>".html_safe
  end
end
