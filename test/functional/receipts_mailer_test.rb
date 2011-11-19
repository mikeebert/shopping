require 'test_helper'

class ReceiptsMailerTest < ActionMailer::TestCase
  test "purchase_confirmation" do
    mail = ReceiptsMailer.purchase_confirmation
    assert_equal "Purchase confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
