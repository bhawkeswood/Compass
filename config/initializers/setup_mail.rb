ActionMailer::Base.smtp_settings = {
    :authentication => :plain,
    :address => "smtp.mailgun.org",
    :port => 587,
    :domain => "compass.assistant.mailgun.org",
    :user_name => "postmaster@compass.assistant.mailgun.org",
    :password => "4scrx-2lii-9"
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"