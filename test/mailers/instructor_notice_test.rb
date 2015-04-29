require 'test_helper'

class InstructorNoticeTest < ActionMailer::TestCase
  test "instuctor" do
    mail = InstructorNotice.instuctor
    assert_equal "Instuctor", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "student" do
    mail = InstructorNotice.student
    assert_equal "Student", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
