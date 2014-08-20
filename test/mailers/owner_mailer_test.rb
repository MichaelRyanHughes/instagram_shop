require 'test_helper'

class OwnerMailerTest < ActionMailer::TestCase
  test "new_order_alert" do
    mail = OwnerMailer.new_order_alert
    assert_equal "New order alert", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
