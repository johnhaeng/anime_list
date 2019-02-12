# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Anime.create(title: "John's Adventure", episodes: 1, seasons: 1)
Anime.create(title: "Adventure of Jesus", episodes: 7, seasons: 14)
Anime.create(title: "FIS", episodes: 3, seasons: 2)

VoiceActor.create(name: "John Lee", age: 3, gender: "M")
VoiceActor.create(name: "Jesus", age: 2, gender: "M")
VoiceActor.create(name: "Teresa", age: 9, gender: "F")

User.create(name: "A", age: 7 , gender: "M")
User.create(name: "B", age: 8, gender: "M")
User.create(name: "C", age: 56, gender: "F")
User.create(name: "D", age: 24, gender: "F")

Studio.create(name: "Jibri")
Studio.create(name: "Ruby")
Studio.create(name: "C++")

Publisher.create(name: "P1")
Publisher.create(name: "P22")
Publisher.create(name: "P333")

Director.create(name: "D1", age: 100, gender: "M")
Director.create(name: "D2", age: 25, gender: "M")
Director.create(name: "D3", age: 2, gender: "F")
