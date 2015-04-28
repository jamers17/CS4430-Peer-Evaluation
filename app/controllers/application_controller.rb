class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authorize 
  before_action :admin_authorize

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
        if defined?(current_team).nil?
            @teams = Team.all
            @team = @teams.select{|t| t.name == current_team.name}
        end
    end

    def team_evaluations(current_member)
        @evaluations = Evaluation.all
        @team_evals = @evaluations.select{|e| e.evaluator_email == current_member.email}
    end


  protected

    def authorize
        unless Member.find_by(id: session[:member_id])
            redirect_to login_url, :flash => { :notice => "You are not allowed access to that. Please log in." }
        end
    end

    def admin_authorize
        member = Member.find_by(id: session[:member_id])
        unless member && member.teacher
            redirect_to student_url, :flash => { :notice => "You are not allowed acess to that. Please log in as administrator." }
        end
    end

end
