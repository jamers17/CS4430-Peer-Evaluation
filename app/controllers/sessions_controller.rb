class SessionsController < ApplicationController
  def new
  end

  def create
    member = Member.find_by(email: params[:email])
    if member and member.teacher and member.authenticate(params[:password])
        session[:member_id] = member.id
        redirect_to admin_url
    elsif member and member.authenticate(params[:password])
        session[:member_id] = member.id
        redirect_to student_url
    else
        redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:member_id] = nil
    redirect_to login_url, notice: "Logged Out"
  end

end
