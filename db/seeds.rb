p "destroy all"

Advantage.destroy_all
Disadvantage.destroy_all
Review.destroy_all

p "début de la seed"

p "creation des advantages"

advantages = %w[ parking ombragé eau fréquentation silencieux chemin ]

advantages.each do |a|
  Advantage.create(
    name: a
  )
end

p "creation des disadvantages"

disadvantages = %w[ parking denivelé route fréquentation bruyant cailloux ]

disadvantages.each do |d|
  Disadvantage.create(
    name: d
  )
end

p "creation des temoignages"
reviews = ["Plus besoin d'ouvrir 2à onglets différents sur pleins de sites pour choisir sa balade",
  "J'aime la possibilité de joindre un lien externe", "Vivement les nouvelles fonctionnalités !"]

reviews.each do |r|
  Review.create(
    content: r
  )
end
p "finito"
