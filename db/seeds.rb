# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ user: 'Chicago' }, { user: 'Copenhagen' }])
#   Mayor.create(user: 'Emanuel', city: cities.first)


User.create(name: "Janet Pluchinsky")
User.create(name: "Eliot Waugh")
User.create(name: "Alice Quinn")
User.create(name: "Julia Wicker")
User.create(name: "Quentin Coldwater")
User.create(name: "Jollyby")

Game.create(user_id: 1, score: 10)
Game.create(user_id: 2, score: 1)
Game.create(user_id: 3, score: 27)
Game.create(user_id: 4, score: 7)
Game.create(user_id: 5, score: 0)
Game.create(user_id: 1, score: 20)
Game.create(user_id: 4, score: 20)
Game.create(user_id: 6, score: 42)
