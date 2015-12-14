# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Skills
@skill1 = Skill.create(name: "Javascript")
@skill2 = Skill.create(name: "CSS")
@skill3 = Skill.create(name: "RoR")
@skill4 = Skill.create(name: "Node")
@skill5 = Skill.create(name: "Ruby")
@skill6 = Skill.create(name: "HTML 5")
@skill7 = Skill.create(name: "Sinatra")

#User
@user1 = User.create(name: "Ivanxius", last_name: "Liusos", email: "ivan@gmail.com", genre: "masculino", birthday_year: "1980", user_type: "practicante", organization: "", opinion: "learn to code", password: "ivan")
@user2 = User.create(name: "Fredo", last_name: "Arlequine", email: "fredo@gmail.com", genre: "masculino", birthday_year: "1993", user_type: "practicante", organization: "", opinion: "learn to code", password: "fredo")
@user3 = User.create(name: "Genius", last_name: "Great", email: "genius@gmail.com", genre: "masculino", birthday_year: "1980", user_type: "empresa", organization: "Genius", opinion: "learn to code", password: "genius")
@user4 = User.create(name: "Marco", last_name: "Niro", email: "marco@gmail.com", genre: "masculino", birthday_year: "1980", user_type: "empresa", organization: "Mercado Libre", opinion: "learn to code", password: "niro")
@user5 = User.create(name: "Alfonso", last_name: "Renius", email: "alfonso@gmail.com", genre: "masculino", birthday_year: "1970", user_type: "empresa", organization: "next-x", opinion: "learn to code", password: "alfonso")
@user6 = User.create(name: "Herdez", last_name: "Bello", email: "herdez@gmail.com", genre: "masculino", birthday_year: "1971", user_type: "practicante", organization: "", opinion: "learn to code", password: "herdez")


#userskills
@userskill1 = Userskill.new(user_id: @user1.id)
@skill1.userskills << @userskill1
@userskill1 = Userskill.new(user_id: @user1.id)
@skill2.userskills << @userskill1

@userskill2 = Userskill.new(user_id: @user2.id)
@skill1.userskills << @userskill2
@userskill2 = Userskill.new(user_id: @user2.id)
@skill2.userskills << @userskill2
@userskill2 = Userskill.new(user_id: @user2.id)
@skill3.userskills << @userskill2

@userskill3 = Userskill.new(user_id: @user6.id)
@skill1.userskills << @userskill3
@userskill3 = Userskill.new(user_id: @user6.id)
@skill2.userskills << @userskill3
@userskill3 = Userskill.new(user_id: @user6.id)
@skill3.userskills << @userskill3
@userskill3 = Userskill.new(user_id: @user6.id)
@skill4.userskills << @userskill3

#proyectos
@proyecto1 = Proyecto.create(title: "Rails App", description: "App for rails", incentive: "Recomendation Letter", result: "Completed", num_students: 5, dead_line: "2015-12-20", empresa_id: @user3.id, user_id: @user3.id)
@proyecto2 = Proyecto.create(title: "Sinatra App", description: "App for sinatra", incentive: "Recomendation Letter", result: "Completed", num_students: 10, dead_line: "2015-12-20", empresa_id: @user3.id, user_id: @user3.id)
@proyecto3 = Proyecto.create(title: "RoR App", description: "App for rails", incentive: "Recomendation Letter", result: "Completed", num_students: 5, dead_line: "2016-12-20", empresa_id: @user4.id, user_id: @user4.id)
@proyecto4 = Proyecto.create(title: "Javasrcipt App", description: "Javascript app", incentive: "Recomendation Letter", result: "Completed", num_students: 7, dead_line: "2016-08-20", empresa_id: @user4.id, user_id: @user4.id)
@proyecto5 = Proyecto.create(title: "Rails Aplication ", description: "App for rails", incentive: "Recomendation Letter", result: "Completed", num_students: 10, dead_line: "2016-12-20", empresa_id: @user5.id, user_id: @user5.id)
@proyecto6 = Proyecto.create(title: "Sinatra App", description: "App for sinatra", incentive: "Recomendation Letter", result: "Completed", num_students: 10, dead_line: "2016-03-20", empresa_id: @user5.id, user_id: @user5.id)


#proskills
@proskill1 = Proskill.new(proyecto_id: @proyecto1.id)
@skill1.proskills << @proskill1
@proskill1 = Proskill.new(proyecto_id: @proyecto1.id)
@skill3.proskills << @proskill1
@proskill1 = Proskill.new(proyecto_id: @proyecto1.id)
@skill5.proskills << @proskill1

@proskill2 = Proskill.new(proyecto_id: @proyecto2.id)
@skill1.proskills << @proskill2
@proskill2 = Proskill.new(proyecto_id: @proyecto2.id)
@skill7.proskills << @proskill2
@proskill2 = Proskill.new(proyecto_id: @proyecto2.id)
@skill5.proskills << @proskill2
@proskill2 = Proskill.new(proyecto_id: @proyecto2.id)
@skill4.proskills << @proskill2

@proskill3 = Proskill.new(proyecto_id: @proyecto3.id)
@skill1.proskills << @proskill3
@proskill3 = Proskill.new(proyecto_id: @proyecto3.id)
@skill3.proskills << @proskill3
@proskill3 = Proskill.new(proyecto_id: @proyecto3.id)
@skill5.proskills << @proskill3
@proskill3 = Proskill.new(proyecto_id: @proyecto3.id)
@skill4.proskills << @proskill3

@proskill4 = Proskill.new(proyecto_id: @proyecto4.id)
@skill1.proskills << @proskill4
@proskill4 = Proskill.new(proyecto_id: @proyecto4.id)
@skill7.proskills << @proskill4
@proskill4 = Proskill.new(proyecto_id: @proyecto4.id)
@skill3.proskills << @proskill4
@proskill4 = Proskill.new(proyecto_id: @proyecto4.id)
@skill4.proskills << @proskill4

@proskill5 = Proskill.new(proyecto_id: @proyecto5.id)
@skill1.proskills << @proskill5
@proskill5 = Proskill.new(proyecto_id: @proyecto5.id)
@skill2.proskills << @proskill5
@proskill5 = Proskill.new(proyecto_id: @proyecto5.id)
@skill6.proskills << @proskill5
@proskill5 = Proskill.new(proyecto_id: @proyecto5.id)
@skill4.proskills << @proskill5

@proskill6 = Proskill.new(proyecto_id: @proyecto6.id)
@skill1.proskills << @proskill6
@proskill6 = Proskill.new(proyecto_id: @proyecto6.id)
@skill2.proskills << @proskill6
@proskill6 = Proskill.new(proyecto_id: @proyecto6.id)
@skill3.proskills << @proskill6
@proskill6 = Proskill.new(proyecto_id: @proyecto6.id)
@skill4.proskills << @proskill6

#postulations
@postulation1 = Postulation.create(user_id: @user1.id, proyecto_id: @proyecto1.id, status: "aceptado")
@postulation2 = Postulation.create(user_id: @user1.id, proyecto_id: @proyecto2.id, status: "postulado")
@postulation3 = Postulation.create(user_id: @user2.id, proyecto_id: @proyecto3.id, status: "aceptado")
@postulation4 = Postulation.create(user_id: @user2.id, proyecto_id: @proyecto4.id, status: "postulado")
@postulation5 = Postulation.create(user_id: @user6.id, proyecto_id: @proyecto5.id, status: "aceptado")
@postulation6 = Postulation.create(user_id: @user6.id, proyecto_id: @proyecto6.id, status: "postulado")

@postulation7 = Postulation.create(user_id: @user2.id, proyecto_id: @proyecto1.id, status: "aceptado")
@postulation8 = Postulation.create(user_id: @user6.id, proyecto_id: @proyecto1.id, status: "aceptado")

@postulation9 = Postulation.create(user_id: @user1.id, proyecto_id: @proyecto3.id, status: "aceptado")
@postulation10 = Postulation.create(user_id: @user6.id, proyecto_id: @proyecto3.id, status: "aceptado")

@postulation11 = Postulation.create(user_id: @user2.id, proyecto_id: @proyecto5.id, status: "aceptado")
@postulation12 = Postulation.create(user_id: @user1.id, proyecto_id: @proyecto5.id, status: "aceptado")


#questions
@question1 = Question.create(title: "About CSS", question: "How to use CSS?", proyecto_id: @proyecto1.id, user_id: @user1.id, question_type: "discussion")
@question2 = Question.create(title: "Z-index", question: "Here how to use Z-index", proyecto_id: @proyecto1.id, user_id: @user2.id, question_type: "resource")
@question3 = Question.create(title: "Proyect completed", question: "Here Project", proyecto_id: @proyecto1.id, user_id: @user6.id, question_type: "deliverable")

@question4 = Question.create(title: "About Javascript", question: "How to use it?", proyecto_id: @proyecto3.id, user_id: @user1.id, question_type: "discussion")
@question5 = Question.create(title: "Jquery", question: "Here how to use draggable", proyecto_id: @proyecto3.id, user_id: @user2.id, question_type: "resource")
@question6 = Question.create(title: "Proyect completed", question: "Here Project", proyecto_id: @proyecto3.id, user_id: @user6.id, question_type: "deliverable")

@question7 = Question.create(title: "About Node Js", question: "How to use it?", proyecto_id: @proyecto5.id, user_id: @user1.id, question_type: "discussion")
@question8 = Question.create(title: "Jquery", question: "Here how to use AJAX with Jquery", proyecto_id: @proyecto5.id, user_id: @user2.id, question_type: "resource")
@question9 = Question.create(title: "Project completed", question: "Here Project", proyecto_id: @proyecto5.id, user_id: @user6.id, question_type: "deliverable")

#answers
@answer1 = Answer.create(answer: "Please check CSS Tutorial - W3Schools", responder_id: @user2.id, question_id: @question1.id)
@answer2 = Answer.create(answer: "Here... CSS - Wikipedia", responder_id: @user6.id, question_id: @question1.id)

@answer3 = Answer.create(answer: "Please check Javascript Tutorial - W3Schools", responder_id: @user2.id, question_id: @question4.id)
@answer4 = Answer.create(answer: "Here... Javascript - Wikipedia", responder_id: @user6.id, question_id: @question4.id)

@answer5 = Answer.create(answer: "Please check Node Tutorial", responder_id: @user2.id, question_id: @question7.id)
@answer6 = Answer.create(answer: "Here... Node - Wikipedia", responder_id: @user6.id, question_id: @question7.id)






