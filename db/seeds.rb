# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Note.destroy_all




user1 = User.create(username:"thatsabbie", password: "123456")


Note.create(user_id: user1.id, title:"The Mortifying Ordeal of Being known", content: '"Years ago a friend of mine had a dream about a strange invention; a staircase you could descend deep underground, in which you heard recordings of all the things anyone had ever said about you, both good and bad. The catch was, you had to pass through all the worst things people had said before you could get to the highest compliments at the very bottom. There is no way I would ever make it more than two and a half steps down such a staircase, but I understand its terrible logic: if we want the rewards of being loved we have to submit to the mortifying ordeal of being known."', archived:false)
Note.create(user_id: user1.id, title:"The Crane Wife", content:'"Here is what I learned once I began studying whooping cranes: only a small part of studying them has anything to do with the birds. Instead we counted berries. Counted crabs. Measured water salinity. Stood in the mud. Measured the speed of the wind. It turns out, if you want to save a species, you don’t spend your time staring at the bird you want to save. You look at the things it relies on to live instead. You ask if there is enough to eat and drink. You ask if there is a safe place to sleep. Is there enough here to survive?"', archived:false)
Note.create(user_id: user1.id, title:"Self-Awareness", content: '"The problem for most people is not self-knowledge, but a lack of will to do anything with it. Trusting yourself means living out what you alrady know to be true."', archived:false)
Note.create(user_id: user1.id, title:"Things to work on after graduation", content: "Resume, linked in, refactor code, portfolio, CS50, python, fix your mod 4 project because routing was a nightmare :(", archived:false)
    
