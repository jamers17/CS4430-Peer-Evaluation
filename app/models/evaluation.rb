class Evaluation < ActiveRecord::Base
    belongs_to :member
    belongs_to :evaluator_email, :class_name => "Member", :foreign_key => :email
    validates :evaluator_email, presence: true, uniqueness: true
 
    validates_numericality_of :question1, :in => 1..5
    validates_numericality_of :question2, :in => 1..5
    validates_numericality_of :question3, :in => 1..5
    validates_numericality_of :question4, :decimal => 0.00..100.00 

end
