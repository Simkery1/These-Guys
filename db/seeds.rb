# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "clean up DB"

Booking.destroy_all
Costume.destroy_all
User.destroy_all

puts "Start database creation... "

  matt = User.create!(user_name: "Matt", first_name: "Matthieu", last_name: "Quetin", address: "Nantes", email: "mat@gmail.com", password: "123456", photo: File.open(Rails.root.join('db/fixtures/users/matthieu.jpg')))
  jim = User.create!(user_name: "Jim", first_name: "Jimmy", last_name: "Le Rouzic", address: "Lorient", email: "jim@gmail.com", password: "234567", photo: File.open(Rails.root.join('db/fixtures/users/jimmy.jpg')))
  sim = User.create!(user_name: "SimKery", first_name: "Simon", last_name: "Keryhuel", address: "Bordeaux", email: "sim@gmail.com", password: "345678", photo: File.open(Rails.root.join('db/fixtures/users/simon.jpg')))
  joris = User.create!(user_name: "Regeman", first_name: "Joris", last_name: "Lespagnol", address: "Paris", email: "joris@gmail.com", password: "456789", photo: File.open(Rails.root.join('db/fixtures/users/joris.jpg')))

  cheval = Costume.create!(owner: matt, price_per_day: 16, description: "Costume pour deux personnes représentant un cheval qui a pas inventé l'eau tiède...", name: "Horse", photo: File.open(Rails.root.join('db/fixtures/costumes/cheval.jpg')))
  combinaison = Costume.create!(owner: jim, price_per_day: 6, description: "Meilleur costume de festivalier, la bière passe au travers, (la clope non).", name: "Combinaison", photo: File.open(Rails.root.join('db/fixtures/costumes/combinaison.jpg')))
  cowboy = Costume.create!(owner: sim, price_per_day: 14, description: "Costume de cowboy pour enfant.", name: "Cow-boy", photo: File.open(Rails.root.join('db/fixtures/costumes/cowboy.jpg')))
  dinosaure = Costume.create!(owner: joris, price_per_day: 20, description: "Ce costume sera du meilleur effet en soirée ! (PS: N'oublie pas ton gonfleur)", name: "Dinosaur", photo: File.open(Rails.root.join('db/fixtures/costumes/dinosaure.jpg')))
  indien = Costume.create!(owner: matt, price_per_day: 8, description: "Costume d'indienne sympa, à ne pas porter l'hiver", name: "Indian", photo: File.open(Rails.root.join('db/fixtures/costumes/indien.jpg')))
  panda = Costume.create!(owner: sim, price_per_day: 11, description: "Aussi bien à porter en soirée que face à une cheminée le dimanche soir.", name: "Panda", photo: File.open(Rails.root.join('db/fixtures/costumes/panda.jpg')))
  pikachu = Costume.create!(owner: joris, price_per_day: 18, description: "Ressemble à ton Pokémon préféré", name: "Pikachu", photo: File.open(Rails.root.join('db/fixtures/costumes/pikachu.jpg')))
  pirate = Costume.create!(owner: jim, price_per_day: 10, description: "Yoho", name: "Pirate", photo: File.open(Rails.root.join('db/fixtures/costumes/pirate.jpg')))
  princess = Costume.create!(owner: sim, price_per_day: 12, description: "Ce déguisement de princesseest une longue robe avec un large col et des manches bouffantes.", name: "Princess", photo: File.open(Rails.root.join('db/fixtures/costumes/princess.jpg')))

  Booking.create!(start_date: "2019-03-19", end_date: "2019-03-20", locataire: sim, costume: cheval, total_price: 16, message: "Nous avons une soirée Animaux et ce déguisement serait du plus bel effet !", status: "accepted")
  Booking.create!(start_date: "2019-05-02", end_date: "2019-05-10", locataire: matt, costume: dinosaure, total_price: 160, message: "Il est dur à gonfler ou pas ?", status: "declined")
  Booking.create!(start_date: "2019-04-19", end_date: "2019-04-20", locataire: joris, costume: cowboy, total_price: 14, message: "Quelle est la taille exacte du costume svp ?", status: "pending")
  Booking.create!(start_date: "2019-12-15", end_date: "2019-12-17", locataire: sim, costume: pikachu, total_price: 36, message: "tchuuuuuuuuuuuu !!!", status: "accepted")

puts "Database created !"
