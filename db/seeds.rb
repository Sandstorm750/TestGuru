# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[Category, User, Test, Question, Answer, UserTest].each(&:delete_all)

category1 = Category.create!(title:'Backend')
category2 = Category.create!(title:'Frontend')
category3 = Category.create!(title:'Fullstack')
category4 = Category.create!(title:'Ather')

user1 = User.create!(name: 'Harry', stage: 1, email: 'potter@gryffindor.mgc')
user2 = User.create!(name: 'Germiona', stage: 2, email: 'granger@gryffindor.mgc')
user3 = User.create!(name: 'Ron', stage: 0, email: 'ronweasley@gryffindor.mgc')
user4 = User.create!(name: 'Navil', stage: 0, email: 'longbottom@gryffindor.mgc')

test1 = Test.create!(title:'Ruby base', level: 0, category_id: category1.id, user_id: user2.id)
test2 = Test.create!(title:'Ruby advanced', level: 1, category_id: category1.id, user_id: user2.id)
test3 = Test.create!(title:'RoR base', level: 1, category_id: category3.id, user_id: user2.id)
test4 = Test.create!(title:'RoR advanced', level: 3, category_id: category3.id, user_id: user2.id)
test5 = Test.create!(title:'HTML base', level: 0, category_id: category2.id, user_id: user2.id)
test6 = Test.create!(title:'HTML advanced', level: 2, category_id: category2.id, user_id: user2.id)
test7 = Test.create!(title:'CSS base', level: 1, category_id: category2.id, user_id: user2.id)
test8 = Test.create!(title:'CSS advanced', level: 2, category_id: category2.id, user_id: user2.id)

user_test1 = UserTest.create!(user_id: 1, test_id: 1)
user_test2 = UserTest.create!(user_id: 1, test_id: 2)
user_test3 = UserTest.create!(user_id: 1, test_id: 3)
user_test4 = UserTest.create!(user_id: 2, test_id: 3)
user_test5 = UserTest.create!(user_id: 2, test_id: 4)
user_test6 = UserTest.create!(user_id: 3, test_id: 5)
user_test7 = UserTest.create!(user_id: 3, test_id: 6)
user_test8 = UserTest.create!(user_id: 4, test_id: 5)
user_test9 = UserTest.create!(user_id: 4, test_id: 6)
user_test10 = UserTest.create!(user_id: 4, test_id: 7)

question1 = Question.create!(body: 'Why Ruby?', topic: 'Ruby', test_id: test2.id)
question2 = Question.create!(body: 'Is Ruby dead?', topic: 'Ruby', test_id: test2.id)
question3 = Question.create!(body: 'Why Rails?', topic: 'RoR', test_id: test3.id)
question4 = Question.create!(body: 'Is Rails the best?', topic: 'RoR', test_id: test4.id)
question5 = Question.create!(body: 'Why HTML is indispensable?', topic: 'HTML', test_id: test5.id)
question6 = Question.create!(body: 'Does CSS create beauty?', topic: 'CSS', test_id: test6.id)
question7 = Question.create!(body: 'Does SQL apply here?', topic: 'HTML', test_id: test7.id)
question8 = Question.create!(body: 'What is CSS used with?', topic: 'CSS', test_id: test8.id)

answer1 = Answer.create!(text: 'Because Ruby is comfortable', correct: 'true', question_id: question1.id)
answer2 = Answer.create!(text: 'This is a fairytale for fools', correct: 'true', question_id: question2.id)
answer3 = Answer.create!(text: 'Because Rails so effective!', correct: 'true', question_id: question3.id)
answer4 = Answer.create!(text: 'Rails the best of the best!', correct: 'true', question_id: question4.id)
answer5 = Answer.create!(text: 'It happened', correct: 'true', question_id: question5.id)
answer6 = Answer.create!(text: 'True truth!', correct: 'true', question_id: question6.id)
answer7 = Answer.create!(text: 'No, Backend only', correct: 'true', question_id: question7.id)
answer8 = Answer.create!(text: 'HTML only', correct: 'true', question_id: question8.id)
