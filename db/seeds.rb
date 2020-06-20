# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create!([
    {name: :Cartman},
    {name: :Kate},
    {name: :Alex},
    {name: :Bob}
 ])

categories = Category.create!([
    {title: 'Car'},
    {title: 'Music'},
    {title: 'Other'}
 ])

tests = Test.create!([
    {title: "Car test 1", level: 0, category_id: categories[0].id },
    {title: "Car test 2", level: 2, category_id: categories[0].id },
    {title: "Music test", level: 1, category_id: categories[1].id },
    {title: "Other test", level: 1, category_id: categories[2].id }
 ])

questions = Question.create!([
    {body: 'Qeustions 1', test_id: tests[0].id },
    {body: 'Qeustions 2', test_id: tests[1].id },
    {body: 'Qeustions 3', test_id: tests[2].id },
    {body: 'Qeustions 4', test_id: tests[3].id }
 ])

answers = Answer.create!([
    {body: 'Answer 1' , correct: true, question_id: questions[0].id },
    {body: 'Answer 2' , correct: false, question_id: questions[0].id },
    {body: 'Answer 1' , correct: true, question_id: questions[1].id },
    {body: 'Answer 2' , correct: false, question_id: questions[1].id },
    {body: 'Answer 1' , correct: true, question_id: questions[2].id },
    {body: 'Answer 2' , correct: false, question_id: questions[2].id },
    {body: 'Answer 1' , correct: true, question_id: questions[3].id },
    {body: 'Answer 2' , correct: false, question_id: questions[3].id }
 ])

users_passed_tests = UsersPassedTest.create!([
    { user_id: users[0].id, test_id: tests[0].id },
    { user_id: users[1].id, test_id: tests[2].id },
    { user_id: users[1].id, test_id: tests[2].id }
 ])