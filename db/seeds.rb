peter = Actor.create(first_name: "Peter", last_name: "Dinklage")
tyrion = Character.create(name: "Tyrion Lannister", catchphrase: "A Lannister always pays his debts")
tyrion.actor = peter
got = Show.create(name: "Game of Thrones")
tyrion.show = got
tyrion.save