require 'test_helper'

class ModelMailerTest < ActionMailer::TestCase
  test "user_sign_up_notification" do
    mail = ModelMailer.user_sign_up_notification
    assert_equal "User sign up notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
