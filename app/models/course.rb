# app/models/course.rb
class Course < ActiveRecord::Base
  has_many :students
  validates :name, presence: true, uniqueness: true
  belongs_to :mentor
end
