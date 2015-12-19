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
@user7 = User.create(name: "Rafa", last_name: "Garcia", email: "rafa@gmail.com", genre: "masculino", birthday_year: "1971", user_type: "practicante", organization: "", opinion: "learn to code", password: "rafa")

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

@userskill4 = Userskill.new(user_id: @user7.id)
@skill1.userskills << @userskill4
@userskill4 = Userskill.new(user_id: @user7.id)
@skill2.userskills << @userskill4

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


#answers_to_#question1
@answer1 = Answer.create(answer: "Please check CSS Tutorial - W3Schools", responder_id: @user2.id, user_id: @user2.id, question_id: @question1.id)
@answer2 = Answer.create(answer: "Here... CSS - Wikipedia", responder_id: @user6.id, user_id: @user6.id, question_id: @question1.id)
@answer7 = Answer.create(answer: "First lets understand what CSS is, before we use it.
CSS is known as Cascading Stylesheet which is commonly used for designing websites.
Usually, CSS is written together with HTML. 
So if you are designing a website using code writing.
You can start of writing CSS codes in any editor.
Before you move on to writing CSS code, you have to ensure that you have basic understanding on HTML and how to start off with it.
Heres a guide to HTML and CSS  Terminology, Syntax, & Introduction", responder_id: @user3.id, user_id: @user3.id, question_id: @question1.id)
@answer8 = Answer.create(answer: "You should also work through some basic tutorials to hand-write some css, so that you can understand how css works, and alter the framework css you're working with in the future. But I cannot heavily enough recommend using a framework for the heavy lifting here: unless you want to invest heavily in the skills of ui/ux and visual design, your time and energy will probably be spent improving your core competencies.  Good luck!", responder_id: @user4.id, user_id: @user4.id, question_id: @question1.id)
@answer9 = Answer.create(answer: "Web Fonts and Typefaces are called and served via the @font-face CSS rule. (Learn more about how to use @font-face at w3-schools or sitepoint.) 

Keep in mind that most commercial desktop fonts are not licensed for web use. There are various ways to acquire the proper webfonts: you can license and download fonts for hosting yourself, or use a web font service like Typekit or Google Fonts.", responder_id: @user5.id, user_id: @user5.id, question_id: @question1.id)
@answer10 = Answer.create(answer: "You can upload your custom font to your hosting service and then use the following in your css file: 
@font-face {
    font-family: 'Name'; /*a name to be used later*/
    src: url('enter_the_url_here');
}
Do keep in mind that most commercial fonts are not licensed for Web use.", responder_id: @user6.id, user_id: @user6.id, question_id: @question1.id)
@answer11 = Answer.create(answer: "The definitions can be applied to DIVs or OLs. Using Modernizer JS, you can prepend flex-capable browsers with the flexbox code + an element reset, and non-capable browsers with an ugly but functional solution using classic CSS.
Technically, you could also do it with a few lines of jQuery and a denounced resize function. It would be easier for you to set up, but harder on the browser.
Or you could use a combination of the three.
Or you could generate your widths as fluid percentages and control the display using media queries on font sizes, with covered backgrounds on image DIVs.", responder_id: @user2.id, user_id: @user2.id, question_id: @question1.id)
@answer12 = Answer.create(answer: "Thankyou fellows", responder_id: @user1.id, user_id: @user1.id, question_id: @question1.id)
@answer13 = Answer.create(answer: "Use flex box on parent. This will allow child div to take content width. The content will overflow with in the div but not the second. But only latest browsers will support.", responder_id: @user3.id, user_id: @user3.id, question_id: @question1.id)
@answer14 = Answer.create(answer: "You can always try to use * {box-sizing: content-box;} in your main css. Bootstrap and foundation which are front end responsive frameworks use this.", responder_id: @user4.id, user_id: @user4.id, question_id: @question1.id)


#resouces_to_question2
@answer31 = Answer.create(answer: "know node.js uses an event-driven, non-blocking I/O model,these will make my site more cool,and I  use express and socket.io create a demo just like the lesson (Using Node.js and Websockets to Build a Chat Service", responder_id: @user3.id, user_id: @user3.id, question_id: @question2.id)
@answer32 = Answer.create(answer: "There are many tricky questions on linked list. One site offering questions and answers on linked list is <a href= www.codersmaze.com </a> which is a good tutorial website consisting of questions on all data structure topics. It also consists of quizzes challenging your fundamentals. Hope this helps.", responder_id: @user4.id, user_id: @user4.id, question_id: @question2.id)
@answer33 = Answer.create(answer: "www.quora.com/the-question/answer/Baptiste-Fontaine and www.quora.com/the-question?/answer/Baptiste-Fontaine are not same URLs.  The last one won't work as you expect.
(In my examples, replace the-question with a real question)
[1]: http://tools.ietf.org/html/rfc39...", responder_id: @user5.id, user_id: @user5.id, question_id: @question2.id)
@answer34 = Answer.create(answer: "The author's code is shared on GitHub under mnielsen/neural-networks-and-deep-learning. The chapters have detailed explanations for the individual snippets, how to set things up to use his code. If you code things up as he explains them, you find yourself reproducing his code.", responder_id: @user6.id, user_id: @user6.id, question_id: @question2.id)
@answer35 = Answer.create(answer: "I don't wish to end up losing someone good with software engineering just because they couldn't answer how to invert a binary tree.
[ read: https://twitter.com/mxcl/status/...", responder_id: @user1.id, user_id: @user1.id, question_id: @question2.id)



#answers_to_#question4
@answer3 = Answer.create(answer: "Please check Javascript Tutorial - W3Schools", responder_id: @user2.id, user_id: @user2.id, question_id: @question4.id)
@answer4 = Answer.create(answer: "Here... Javascript - Wikipedia", responder_id: @user6.id, user_id: @user6.id, question_id: @question4.id)
@answer15 = Answer.create(answer: "Java script is difficult at the begining, but take a look in a tutorial to understan it", responder_id: @user4.id, user_id: @user4.id, question_id: @question4.id)
@answer16 = Answer.create(answer: "CYou basically need to check to see if the input fields are equal to null or nothing. If they are equal to nothing, return false and display an alert telling the user they've missed something out.
I built this simple pizza deal calculator on codepen only a few weeks back, I included form validation, see this example: http://codepen.io/mildrenben/pen...
http://www.webdesignrepo.com
  has a few decent plugins for form validation under Plugins > Forms.
", responder_id: @user5.id, user_id: @user5.id, question_id: @question4.id)
@answer17 = Answer.create(answer: "The easiest method to Validate a HTML Form is to use a Javascript Function.
It should work. 
", responder_id: @user3.id, user_id: @user3.id, question_id: @question4.id)
@answer18 = Answer.create(answer: "This is an answer I have already answered for another question, it seems relevant to what you are asking, so here goes : 
It  would be great if you can go for OCJP certification. While you are at   it, develop an application from scratch. There are plenty of resources   available online to facilitate App Development. 
You can go for internships in Start ups and MNCs, nothing works like practical exposure : 
", responder_id: @user2.id, user_id: @user2.id, question_id: @question4.id)
@answer19 = Answer.create(answer: "1) The Java™ Tutorials on official oracle site (I think this is the best of best)
2) Head First Java, 2nd Edition: Kathy Sierra, Bert Bates
3) Effective Java (2nd Edition): Joshua Bloch, [free PDFs available at Page on Duytan or Page on Vnu]
4) GWT in Action, Second Edition (Since you want to learn GWT)", responder_id: @user5.id, user_id: @user5.id, question_id: @question4.id)
@answer20 = Answer.create(answer: "It's in general difficult to learn any programming language quickly if you don't have a background in programming. 
To learn Java quickly it would be useful to have a background in C, and it would be VERY useful to have a background in a object-oriented language like C++ or C#, or even an object-oriented scripting language like Python or Ruby. 
Assuming that you don't have any of these, a good first step would be to download an open-source Java IDE (Integrated development environment) like Netbeans: 
http://netbeans.org/ ", responder_id: @user1.id, user_id: @user1.id, question_id: @question4.id)
@answer21 = Answer.create(answer: "Honestly it depends on the type of person you are. If you like working independently and are very motivated in programming, I would:
Read books such as Head First Java, 2nd Edition
Take online courses such this one my peer made Decoding AP Computer Science A - Udemy .
Do online programming courses/challenges (once feeling ready). Here are some examples: USA Computing Olympiad , topcoder, and HackerRank .
Make a Java applet or Java application using eclipse or android studio. There are awesome courses on the youtube channel thenewboston (just look at the playlists and find what suits your needs!)
If you are not that motivated in programming (ex: attempting to get a '5' on an ap course), I would strongly recommend you to take a course physically (if in high school, take the intro or AP computer course). You will most likely need a teacher that will pester you to answer practice questions so that you will learn important aspects of Java.", responder_id: @user6.id, user_id: @user6.id, question_id: @question4.id)
@answer22 = Answer.create(answer: "If you have chosen Java, your question could be re-framed to something like: 'What is the best way to learn Java decently?'
Do you already know any other programming language? Is it object oriented? If yes, your learning path can be smoother.
Java has a bigger learning curve. It's a complete platform with a huge API[1] and a lot of details. As you've reduced your scenario to Android, I suppose you could organize your studies this way:
Understand the basics of packages, classes and methods. These 3 concepts by themselves have a lot of details and best practices;", responder_id: @user4.id, user_id: @user4.id, question_id: @question4.id)


#resources_to_question5
@answer36 = Answer.create(answer: "I'd rather ask something which I feel are more relevant and practical to the nature of job I'm hiring for. I'd also ensure that I don't end up asking popular questions out of some blog or any github post.
[read: https://twitter.com/slicknet/sta...", responder_id: @user1.id, user_id: @user1.id, question_id: @question5.id)
@answer37 = Answer.create(answer: "StackOverflow trick : http://stackoverflow.com/tags/ja... Here you can change the the language like : PHP, Python, angularjs etc in the same url (replace java word after  word in url with your programming language) example :", responder_id: @user3.id, user_id: @user3.id, question_id: @question5.id)
@answer38 = Answer.create(answer: "http://stackoverflow.com/tags/ph...", responder_id: @user4.id, user_id: @user4.id, question_id: @question5.id)
@answer39 = Answer.create(answer: "http://stackoverflow.com/tags/angularjs/inf", responder_id: @user5.id, user_id: @user5.id, question_id: @question5.id)
@answer40 = Answer.create(answer: "If you are interested in learning genetics, then this site is for you. Teaches a lot about genetics. It is a nice place to pick up information on your genes.
http://www.dartmouth.edu/~humana...", responder_id: @user6.id, user_id: @user6.id, question_id: @question5.id)



#answers_to_questions7
@answer5 = Answer.create(answer: "Please check Node Tutorial", responder_id: @user2.id, user_id: @user2.id, question_id: @question7.id)
@answer6 = Answer.create(answer: "Here... Node - Wikipedia", responder_id: @user6.id, user_id: @user6.id, question_id: @question7.id)
@answer23 = Answer.create(answer: "Here's what the web team does here at Taskworld;
We all use Atom as our IDE (ok, one of us is still using Vim).
Add the superb ESLint plugin and you've got what we consider the best setup to do both front- and back-end JavaScript today.
We build our UI/UX using React and Refluxjs, and we're currently at 200 components and counting.
React + Flux is probably the best thing that's happened front-end tech since jQuery.
We use Stylus as our CSS preprocessor together with the PostCSS autoprefixer - stylesheets have never been easier.
We use Gulp, Babeljs and Browserify to power our front-end builds.
We use Sockjs to handle WebSockets, but like Socket.IO as well.
We use hapi.js as our main Web Framework.
It powers our APIs, both REST and WebSocket, and all our pages.
Hapi owns Express, imho.", responder_id: @user3.id, user_id: @user3.id, question_id: @question7.id)
@answer24 = Answer.create(answer: "Express is the framework to use when you are building web apps using Node.js. 
An extensive list of other frameworks used on top of node is given here - Node.js Frameworks
As for editor tools, you can use any editor which handles Javascript. As for me, I use Sublime Text with SublimeLinter and JsFormat", responder_id: @user5.id, user_id: @user5.id, question_id: @question7.id)
@answer25 = Answer.create(answer: "The MEAN stack is a collection of tools for building robust web applications with JavaScript. It includes four main ingredients: MongoDB, ExpressJS, AngularJS, and Node.js.
Angular.js has become the hottest new MVC framework, and using it with Node and Express means a high level of harmony between the client and server.
Throw MongoDB on for data storage, and you have JavaScript from front to back.
These applications are quick to put together, and represent the modern state of web application development.", responder_id: @user4.id, user_id: @user4.id, question_id: @question7.id)
@answer26 = Answer.create(answer: "I have been using for the last six months these:
Express
Angular
Pages load almost instantly, data-binding is awesome and the code is very clear to mantain once you understand how Angular works.", responder_id: @user2.id, user_id: @user2.id, question_id: @question7.id)
@answer27 = Answer.create(answer: "Node JS is javascript but instead of the browser it runs on server just like any other server side language.

It is common knowledge that javascript runs on browser but the part which actually runs javascript is Javascript engine. So to put it in an easier way you can assume that you take that javascript engine out of browser and put it on the server now your server is ready to process any javascript you throw at it.", responder_id: @user3.id, user_id: @user3.id, question_id: @question7.id)
@answer28 = Answer.create(answer: "Javascript code is interpreted and JIT compiled within the browsers. Chrome has the V8 engine to perform this job. V8 is developed by Google as an open source project so that everybody can access the source. NodeJS is created by the idea of adopting this V8 engine to the operating system side and running JavaScript just like PHP or Python on the server. Node is not alone though. There are similar open source projects trying to do the same job. For instance one of them is JXcore · a Node.JS distribution with additional features such as multithreading and Spidermonkey (Firefox JS engine) option.", responder_id: @user6.id, user_id: @user6.id, question_id: @question7.id)
@answer29 = Answer.create(answer: "Grunt
A task runner for JavaScript. This is a tool that I use for most projects that I start. It's used together with a lot of different plugins such as CoffeeScript, Jade, JSHint, Less / sass / stylus and so on.
It's vital to use a task runner these days in order to make the development process easier for you. A task runner is mostly useful in the front end.
NVM
A Node Version Manager. It helps you manage different node.js versions on your machine. You're able to quickly and painlessly update to another node version whenever required. With a few additional commands you can even install all of the global packages to your new version.
If you have multiple versions running different applications you can start each of them with a specific node version.
", responder_id: @user1.id, user_id: @user1.id, question_id: @question7.id)
@answer30 = Answer.create(answer: "JShint
A linter for JavaScript. Checks your code for errors or style conventions and returns the warnings and errors you've made. It can run as a CLI tool, in your editor or as a task in Grunt or Gulp. Extremely useful in keeping your code clean when working with multiple people on a project.
Istanbul
Istanbul handles your code coverage together with your tests. It runs your tests and reports back on the statements or branches you haven't tested yet.", responder_id: @user6.id, user_id: @user6.id, question_id: @question7.id)


#resources_to_question8
@answer41 = Answer.create(answer: "http://www.livescience.com/
For news about Science.", responder_id: @user6.id, user_id: @user6.id, question_id: @question8.id)
@answer42 = Answer.create(answer: "http://www.compadre.org/
Contains resources and articles on Astronomy and Physics.", responder_id: @user3.id, user_id: @user3.id, question_id: @question8.id)
@answer43 = Answer.create(answer: "http://www.gnowledge.com
Tests on various subjects, including programming, TV shows, teaching, history, etc. You can pick up a lot of knowledge by simply frequenting this site a lot.", responder_id: @user5.id, user_id: @user5.id, question_id: @question8.id)
@answer44 = Answer.create(answer: "The articles on this site are amazing. As a sneak-peek to the articles on the site, check out this one: http://lesswrong.com/lw/2b0/baye..., it illustrates Bayes' Theorem in layman terms.", responder_id: @user1.id, user_id: @user1.id, question_id: @question8.id)
@answer45 = Answer.create(answer: "http://www.3quarksdaily.com
This site posts interesting articles around the web, six days a week. The articles are related to either Science, Literature, current affairs, art and anything else that is fascinating.", responder_id: @user4.id, user_id: @user4.id, question_id: @question8.id)














































