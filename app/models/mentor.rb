class Mentor < ActiveRecord::Base
  has_secure_password
  has_many :courses
  has_many :students, through: :courses
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
