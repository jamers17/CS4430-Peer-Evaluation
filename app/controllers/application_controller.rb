class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_member, :student_not_in_team?, :student, :team_members, :current_team, :team_evaluations

  private

  def current_member
    @current_member ||= Member.find(session[:member_id]) if session[:member_id]
  end

  def current_team(current_member)
    @current_team = Team.find_by email: current_member.email
  end

  def student_not_in_team?
    @students = student
  end
  
  def student
    @members = Member.all
    @student = @members.select{|m| m.teacher == false}
  end
    
  def team_members(current_team)
    @teams = Team.all
    @team = @teams.select{|t| t.name == current_team.name}
  end

  def team_evaluations(current_member)
    @evaluations = Evaluation.all
    @team_evals = @evaluations.select{|e| e.evaluator_email == current_member.email}
  end

end
