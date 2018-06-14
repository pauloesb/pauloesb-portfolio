ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => "587",
    :domain => "gmail.net",
    :user_name => ENV.fetch('MAIL_FORM_USER'),
    :password => ENV.fetch('MAIL_FORM_PASSWORD'),
    :authentication => "plain",
    :enable_starttls_auto => true
}
