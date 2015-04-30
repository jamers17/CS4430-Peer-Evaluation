class Member < ActiveRecord::Base
  require 'csv'
  validates :email, presence: true, uniqueness: true
  has_secure_password

  belongs_to :team
  has_many :evaluations

  def name_and_email 
    "#{first} #{last}, #{email}"
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      member_hash = row.to_hash
      member = Member.where(id: member_hash["id"])


      if member.cont == 1
        member.first.update_attributes(product_hash)
      else
        Member.create!(member_hash)
      end
    end
  end
end
