# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[Category, User, Test, Question, Answer, UserTest].each(&:delete_all)

category1 = Category.create(title:'Backend')
category2 = Category.create(title:'Frontend')
category3 = Category.create(title:'Fullstack')
category4 = Category.create(title:'Other')

test1 = Test.create(title:'Ruby base', level: 0, category_id: 1)
test2 = Test.create(title:'Ruby advanced', level: 1, category_id: 1)
test3 = Test.create(title:'RoR base', level: 1, category_id: 3)
test4 = Test.create(title:'RoR advanced', level: 2, category_id: 3)
test5 = Test.create(title:'HTML base', level: 0, category_id: 2)
test6 = Test.create(title:'HTML advanced', level: 2, category_id: 2)
test7 = Test.create(title:'CSS base', level: 1, category_id: 2)
test8 = Test.create(title:'CSS advanced', level: 3, category_id: 2)

question1 = Question.create(body: 'Why Ruby?', topic: 'Ruby')
question2 = Question.create(body: 'Is Ruby dead?', topic: 'Ruby')
question3 = Question.create(body: 'Why Rails?', topic: 'RoR')
question4 = Question.create(body: 'Is Rails the best?', topic: 'RoR')
question5 = Question.create(body: 'Why HTML is indispensable?', topic: 'HTML')
question6 = Question.create(body: 'Does CSS create beauty?', topic: 'CSS')
question7 = Question.create(body: 'Does SQL apply here?', topic: 'HTML')
question8 = Question.create(body: 'What is CSS used with?', topic: 'CSS')

answer1 = Answer.create(text: 'Because Ruby is comfortable', correct: 'true')
answer2 = Answer.create(text: 'This is a fairytale for fools', correct: 'true')
answer3 = Answer.create(text: 'Because Rails so effective!', correct: 'true')
answer4 = Answer.create(text: 'Rails the best of the best!', correct: 'true')
answer5 = Answer.create(text: 'It happened', correct: 'true')
answer6 = Answer.create(text: 'True truth!', correct: 'true')
answer7 = Answer.create(text: 'No, Backend only', correct: 'true')
answer8 = Answer.create(text: 'HTML only', correct: 'true')

user1 = User.create(name: 'Harry', stage: 1)
user2 = User.create(name: 'Germiona', stage: 2)
user3 = User.create(name: 'Ron', stage: 0)
user4 = User.create(name: 'Navil', stage: 0)

user_test1 = UserTest.create(user_id: 1, test_id: 1)
user_test2 = UserTest.create(user_id: 1, test_id: 2)
user_test3 = UserTest.create(user_id: 1, test_id: 3)
user_test4 = UserTest.create(user_id: 2, test_id: 3)
user_test5 = UserTest.create(user_id: 2, test_id: 4)
user_test6 = UserTest.create(user_id: 3, test_id: 5)
user_test7 = UserTest.create(user_id: 3, test_id: 6)
user_test8 = UserTest.create(user_id: 4, test_id: 5)
user_test9 = UserTest.create(user_id: 4, test_id: 6)
user_test10 = UserTest.create(user_id: 4, test_id: 7)
