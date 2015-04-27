class StudentController < ApplicationController
  skip_before_action :admin_authorize

  def index
  end
end
