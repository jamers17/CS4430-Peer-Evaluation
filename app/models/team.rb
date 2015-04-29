class Team < ActiveRecord::Base
  has_many :members
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
