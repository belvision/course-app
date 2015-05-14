# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# db/seeds.rb
# drop courses and students
puts 'Drop students...'
Student.delete_all
puts 'Drop courses...'
Course.delete_all

# create courses
puts 'Creating courses...'
ff = Mentor.find_by_name('23232323')
courses = Course.create!([
                             { name: 'Building web applications with Ruby on Rails', mentor: ff },
                             { name: 'HTML & CSS basics' }
                         ])

# create students
puts 'Creating students...'
students = [
    {
        github_name: 'alesdrobysh',
        name: 'Ales',
        course: courses[0],
        heroku_app: 'sleepy-lowlands-6650'
    },
    {
        github_name: 'qwerchenok',
        name: 'Alexey',
        course: courses[0],
        heroku_app: 'satdatabase'
    },
    #...
    {
        github_name: 'alberteinstein',
        name: 'Albert',
        course: courses[1],
        heroku_app: nil
    }
]

students.map { |s| Student.create!(s) }