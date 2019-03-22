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

# USERS
  matt = User.create!(
    user_name: "Matt",
    first_name: "Matthieu",
    description: "J'ai, à mon actif, une licence d'Info-Com qui m'a fait découvrir le graphisme et la PAO. Aujourd'hui, je souhaite ajouter à cette formation la compétence de développeur Web, qui d'après moi, son des compétences peuvent se completer et me permettre d'exercer un métier qui me plaît. ",
    last_name: "Quetin",
    rating: "5/10",
    address: "Nantes",
    email: "mat@gmail.com",
    password: "password",
    photo: File.open(Rails.root.join('db/fixtures/users/matthieu.jpg'))
  )
  jim = User.create!(
    user_name: "Jim",
    first_name: "Jimmy",
    description: "Je suis issu de formation gestion/entrepreneuriat, je souhaite me former au développement web afin de mettre en place des projets de création d'entreprise.",
    last_name: "Le Rouzic",
    rating: "6/10",
    address: "Lorient",
    email: "jim@gmail.com",
    password: "password",
    photo: File.open(Rails.root.join('db/fixtures/users/jimmy.jpg'))
  )
  sim = User.create!(
    user_name: "SimK",
    first_name: "Simon",
    description: "Graduated from a BBA and will start an MSc in Engineering management next September, fluent in english and a German level of C1. Several work exp abroad.",
    last_name: "Keryhuel",
    rating: "7/10",
    address: "Bordeaux",
    email: "sim@gmail.com",
    password: "password",
    photo: File.open(Rails.root.join('db/fixtures/users/simon.jpg'))
  )
  joris = User.create!(user_name: "Regeman",
    first_name: "Joris",
    description: "J'ai fais un master en communication à l'université de Toulouse 1 Capitole, j'ai décidé de rejoindre le wagon afin d'apprendre à coder et ainsi me permettre de m'épanouir dans mes propres projets.",
    last_name: "Lespagnol",
    rating: "1/10",
    address: "Paris",
    email: "joris@gmail.com",
    password: "password",
    photo: File.open(Rails.root.join('db/fixtures/users/joris.jpg'))
  )

# COSTUMES
  cheval = Costume.create!(
    owner: matt,
    price_per_day: 16,
    size: "Adulte",
    state: "Neuf",
    description: "Costume pour deux personnes",
    name: "Cheval",
    photo: File.open(Rails.root.join('db/fixtures/costumes/cheval.jpg'))
  )
  combinaison = Costume.create!(
    owner: jim,
    price_per_day: 6,
    size: "Adulte",
    state: "Occasion",
    description: "Meilleur costume de festivalier, la bière passe au travers, (la clope non).",
    name: "Combinaison",
    photo: File.open(Rails.root.join('db/fixtures/costumes/combinaison.jpg'))
  )
  cowboy = Costume.create!(
    owner: sim,
    price_per_day: 14,
    size: "Enfant",
    state: "Occasion",
    description: "Costume de cowboy pour enfant.",
    name: "Cow-boy",
    photo: File.open(Rails.root.join('db/fixtures/costumes/cowboy.jpg'))
  )
  dinosaure = Costume.create!(
    owner: joris,
    price_per_day: 20,
    size: "Adulte",
    state: "Neuf",
    description: "Ce costume sera du meilleur effet en soirée ! (PS: N'oublie pas ton gonfleur)",
    name: "Dinosaure",
    photo: File.open(Rails.root.join('db/fixtures/costumes/dinosaure.jpg'))
  )
  indien = Costume.create!(
    owner: matt,
    price_per_day: 8,
    size: "Adulte",
    state: "Neuf",
    description: "Costume d'indienne, à ne pas porter l'hiver",
    name: "Indienne",
    photo: File.open(Rails.root.join('db/fixtures/costumes/indien.jpg'))
  )
  panda = Costume.create!(
    owner: sim,
    price_per_day: 11,
    size: "Adulte",
    state: "Occasion",
    description: "Aussi bien à porter en soirée que face à une cheminée le dimanche soir.",
    name: "Panda",
    photo: File.open(Rails.root.join('db/fixtures/costumes/panda.jpg'))
  )
  pikachu = Costume.create!(
    owner: joris,
    price_per_day: 18,
    size: "Enfant",
    state: "Occasion",
    description: "Ressemble à ton Pokémon préféré",
    name: "Pikachu",
    photo: File.open(Rails.root.join('db/fixtures/costumes/pikachu.jpg'))
  )
  pirate = Costume.create!(
    owner: jim,
    price_per_day: 10,
    size: "Adulte",
    state: "Neuf",
    description: "Yoho",
    name: "Pirate",
    photo: File.open(Rails.root.join('db/fixtures/costumes/pirate.jpg'))
  )
  princess = Costume.create!(
    owner: sim,
    price_per_day: 12,
    size: "Adulte",
    state: "Neuf",
    description: "Ce déguisement de princesse est une longue robe avec un large col et des manches bouffantes.",
    name: "Princesse",
    photo: File.open(Rails.root.join('db/fixtures/costumes/princess.jpg'))
  )

# BOOKINGS
  Booking.create!(
    start_date: "2019-03-19",
    end_date: "2019-03-20",
    locataire: sim,
    costume: cheval,
    total_price: 16,
    message: "Nous avons une soirée Animaux et ce déguisement serait du plus bel effet !",
    status: "Accepté"
  )
  Booking.create!(
    start_date: "2019-05-02",
    end_date: "2019-05-10",
    locataire: matt,
    costume: dinosaure,
    total_price: 160,
    message: "Il est dur à gonfler ou pas ?",
    status: "Refusé"
  )
  Booking.create!(
    start_date: "2019-04-19",
    end_date: "2019-04-20",
    locataire: joris,
    costume: cowboy,
    total_price: 14,
    message: "Quelle est la taille exacte du costume svp ?",
    status: "En attente"
  )
  Booking.create!(
    start_date: "2019-12-15",
    end_date: "2019-12-17",
    locataire: sim,
    costume: pikachu,
    total_price: 36,
    message: "tchuuuuuuuuuuuu !!!",
    status: "Accepté"
  )

puts "Database created !"
