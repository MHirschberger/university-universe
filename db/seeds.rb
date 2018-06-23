# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

University.create([{ name: 'New York University', city: 'New York', state: 'NY', country: 'United States'},
{ name: 'Pennsylvania State University', city: 'State College', state: 'PA', country: 'United States'},
{ name: 'Cooper Union', city: 'New York', state: 'NY', country: 'United States'},
{ name: 'University of Oxford', city: 'Oxford', country: 'United Kingdom'}])

Course.create([{ course_number: 'PHIL101', name: 'Introduction to Philosophy', department: 'Philosophy', professor: 'John Johnny', university_id: 1},
{ course_number: 'MA100', name: 'Algebra', department: 'Mathematics', professor: 'Mark Smith', university_id: 1 },
{ course_number: 'CH330', name: 'Biochemistry', department: 'Chemistry', professor: 'Jane Moran', university_id: 2 },
{ course_number: 'ENV101', name: 'Environmental Science Lab', department: 'Environmental Science', professor: 'Jane Doe', university_id: 2 },
{ course_number: 'PH200', name: 'Electricity and Magnetism', department: 'Physics', professor: 'Jack Johnson', university_id: 3 },
{ course_number: 'ECE200', name: 'Computer Architecture', department: 'Electrical Engineering', professor: 'Matt Hirsch', university_id: 3 },
{ course_number: 'CS201', name: 'Operating Systems', department: 'Computer Science', professor: 'Bill Gates', university_id: 4 },
{ course_number: 'CS300', name: 'Discrete Mathematics for Computer Scientists', department: 'Computer Science', professor: 'Ruben Rubenstein', university_id: 4 }])

User.create([{ name: 'Dan13', email: 'dan@dan.com', password: 'dan'},
{ name: 'Jessica19', email: 'jess@jess.com', password: 'jess'}])

