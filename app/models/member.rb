class Member < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  has_secure_password

  belongs_to :team
  has_many :evaluations

  def name_and_email 
    "#{first} #{last}, #{email}"
  end

end
