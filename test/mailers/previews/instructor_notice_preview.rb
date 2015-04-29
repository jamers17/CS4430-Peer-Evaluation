# Preview all emails at http://localhost:3000/rails/mailers/instructor_notice
class InstructorNoticePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/instructor_notice/instuctor
  def instuctor
    InstructorNotice.instuctor
  end

  # Preview this email at http://localhost:3000/rails/mailers/instructor_notice/student
  def student
    InstructorNotice.student
  end

end
