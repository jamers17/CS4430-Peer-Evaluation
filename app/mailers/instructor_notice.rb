class InstructorNotice < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.instructor_notice.instuctor.subject
  #
  def instuctor
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.instructor_notice.student.subject
  #
  def student
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
