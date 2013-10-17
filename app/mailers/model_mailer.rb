class ModelMailer < ActionMailer::Base
  default from: "compass.application@gmail.com"
 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.user_sign_up_notification.subject
  #
  def user_sign_up_notification(user)
    @user = user

    mail(to: "<#{user.email}>", subject: "Success! You did it.")
  end
end
