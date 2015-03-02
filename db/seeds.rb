# Look into using Faker Gem to create all this stuff 

kev = User.create(email:"kevin@dbc.com", password:"cheese")
jeff = User.create(email:"jeff@dbc.com", password:"phase2")
rayan = User.create(email:"rayan@dbc.com", password: "12345")

happy = Category.create(mood: "Happy")
sad = Category.create(mood: "Sad")
angry = Category.create(mood: "Angry")
encouraged = Category.create(mood: "Encouraged")

encouraged1 = Message.create(title: "The gym", content: "I'm feeling very good about myself: I put up 450 lbs on the bench press today.  I'm happy that my Herculean strength hasn't diminished during my time at DBC.", user: kev, category: encouraged)
encouraged2 = Message.create(title: "Phase 2", content: "The first week of phase 2 has been a whirlwind: so much material to cover in so little time.  But I'm encouraged because I've learned so much.  Also: Zack and Chris said our group project was awesome.",  user: jeff, category: encouraged)
happy1 = Message.create(title: "Apple Sauce", content: "Applesauce is my favorite snack: I eat it when I am happy. But I am especially fond of it when I am sad because it makes me happy again.", user: kev, category: happy)
happy2 = Message.create(title: "Happiness", content: "Dong Chul makes me happy; he is funny and smart. I am glad Dong Chul and I are friends.", user: kev, category: happy)
angry1 = Message.create(title:"Quiet Car", content: "On the train ride in today, some ruffians were being loud in the quiet car.  They awoke me from my slumber.  I was furious.", user: jeff, category: angry)
angry2 = Message.create(title: "Mangoes", content: "I was mad at Jason today because he stole my mangoes out of the fridge.  Jason should get his own mangoes", user: rayan, category: angry)
sad1 = Message.create(title: "My Phone", content: "Today, I was sad because someone sold me a defective phone.  Now I need a new phone :( . ", user: rayan, category: sad)
sad2 = Message.create(title: "The McRib", content: "I went to McDonald's today and they didn't have anymore McRib's.  I was stricken with grief", user: jeff, category: sad)

