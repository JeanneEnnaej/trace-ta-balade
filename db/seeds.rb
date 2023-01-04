p "destroy all"

Advantage.destroy_all
Disadvantage.destroy_all
Review.destroy_all
Step.destroy_all
Walk.destroy_all
User.destroy_all

p "Start seed"

p "creation of  advantages"

advantages = %w[ Parking Ombre Eau Fréquentation Silencieux Chemins Forêt Plat Dénivelé Pas-de-chasse ]

advantages.each do |a|
  Advantage.create(
    name: a
  )
end

p "creation of disadvantages"

disadvantages = %w[ Parking Denivelé Route Fréquentation Bruyant Cailloux Animaux Chasse ]

disadvantages.each do |d|
  Disadvantage.create(
    name: d
  )
end

p "creation of reviews"

reviews = ["Plus besoin d'ouvrir 20 onglets différents sur pleins de sites pour choisir sa balade",
  "J'aime la possibilité de joindre un lien externe", "Vivement les nouvelles fonctionnalités !"]

reviews.each do |r|
  Review.create(
    content: r
  )
end

p "Creation of users"

User.create(first_name: "Test", last_name: "Essai", email: "test@hotmail.com", password: "lewagon", address: "21 rue des capucins")
User.create(first_name: "Public", last_name: "Test", email: "public@hotmail.com", password: "lewagon", address: "14 rue du chariot d'or")

p "Creation of walks"

walk1 = Walk.create(title: 'Miribel', num_km: 3000, duration: 60, rating: 4, date: 2.days.ago, address: "CChemin du Gravier Blanc, 69150 Décines-Charpieu, France", latitude: 45.796992126972995, longitude:4.969899527828803, content: "Jolie balade autour du petit lac", status: "public", user_id: User.first.id  )
WalkAdvantage.create(walk_id: walk1.id, advantage_id: Advantage.find_by_name('Parking').id)
WalkAdvantage.create(walk_id: walk1.id, advantage_id: Advantage.find_by_name('Eau').id)

WalkDisadvantage.create(walk_id: walk1.id, disadvantage_id: Disadvantage.find_by_name('Fréquentation').id)
WalkDisadvantage.create(walk_id: walk1.id, disadvantage_id: Disadvantage.find_by_name('Chasse').id)

walk1.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/miribel.jpg')),
  filename: 'miribel.jpg',
  content_type: 'image/jpg'
)

walk1.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/irkomiribel.jpg')),
  filename: 'irkomiribel.jpg',
  content_type: 'image/jpg'
)

walk2 = Walk.create(title: 'Vernaison', num_km: 5000, duration: 138, rating: 4,date: 32.days.ago, address: "551 Chemin de la Traille, 69360 Solaize, France", latitude: 45.6426766, longitude:4.8154941, content: "Balade sur l'ile entre Rhone et Saone", status: "privée", user_id: User.first.id  )
WalkAdvantage.create(walk_id: walk2.id, advantage_id: Advantage.find_by_name('Parking').id)
WalkAdvantage.create(walk_id: walk2.id, advantage_id: Advantage.find_by_name('Eau').id)

WalkDisadvantage.create(walk_id: walk2.id, disadvantage_id: Disadvantage.find_by_name('Fréquentation').id)
WalkDisadvantage.create(walk_id: walk2.id, disadvantage_id: Disadvantage.find_by_name('Chasse').id)

walk3 = Walk.create(title: 'Charbonnière', num_km: 4000, duration: 78, rating: 4,date: 56.days.ago, address: "19 Chemin de la Halte des Flachères, 69260 Charbonnières-les-Bains, France", latitude: 45.77716827392578, longitude:4.7537689208984375, content: "Petite foret sympa", status: "privée", user_id: User.first.id  )
WalkAdvantage.create(walk_id: walk3.id, advantage_id: Advantage.find_by_name('Ombre').id)
WalkAdvantage.create(walk_id: walk3.id, advantage_id: Advantage.find_by_name('Forêt').id)

WalkDisadvantage.create(walk_id: walk3.id, disadvantage_id: Disadvantage.find_by_name('Fréquentation').id)
WalkDisadvantage.create(walk_id: walk3.id, disadvantage_id: Disadvantage.find_by_name('Chasse').id)
WalkDisadvantage.create(walk_id: walk3.id, disadvantage_id: Disadvantage.find_by_name('Denivelé').id)

walk3.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/charbo.jpg')),
  filename: 'charbo.jpg',
  content_type: 'image/jpg'
)

walk4 = Walk.create(title: 'Parc de Parilly', num_km: 2000, duration: 60, rating: 3,date: 7.days.ago, address: "3 Rue du Clos Verger, 69200 Vénissieux, France", latitude: 45.7215258, longitude:4.8942801, content: "Parc urbain, chiens en laisse", status: "public", user_id: User.last.id  )
WalkAdvantage.create(walk_id: walk4.id, advantage_id: Advantage.find_by_name('Ombre').id)
WalkAdvantage.create(walk_id: walk4.id, advantage_id: Advantage.find_by_name('Pas-de-chasse').id)

WalkDisadvantage.create(walk_id: walk4.id, disadvantage_id: Disadvantage.find_by_name('Fréquentation').id)

walk5 = Walk.create(title: 'Parc de la Feyssine', num_km: 4000, duration: 78, rating: 4,date: 12.days.ago, address: "10 Avenue Monin, 69100 Villeurbanne, France", latitude: 45.7877633, longitude:4.8837882, content: "Parc urbain, chiens en libre", status: "public", user_id: User.last.id  )
WalkAdvantage.create(walk_id: walk5.id, advantage_id: Advantage.find_by_name('Ombre').id)
WalkAdvantage.create(walk_id: walk5.id, advantage_id: Advantage.find_by_name('Pas-de-chasse').id)
WalkAdvantage.create(walk_id: walk5.id, advantage_id: Advantage.find_by_name('Eau').id)

WalkDisadvantage.create(walk_id: walk5.id, disadvantage_id: Disadvantage.find_by_name('Fréquentation').id)
WalkDisadvantage.create(walk_id: walk5.id, disadvantage_id: Disadvantage.find_by_name('Bruyant').id)


walk5.photos.attach(
  io: File.open(Rails.root.join('app/assets/images/feyssine.jpg')),
  filename: 'feyssine.jpg',
  content_type: 'image/jpg'
)

p "creation of steps"

Step.create(name: "départ", latitude:45.7969933, longitude: 4.9703003, walk_id: walk1.id )
Step.create(name: "croisement 1", latitude:45.80391, longitude: 4.9800532, walk_id: walk1.id )
Step.create(name: "croisement 2", latitude:45.799967, longitude: 4.982945, walk_id: walk1.id )
Step.create(name: "retour au parking", latitude:45.7971932, longitude: 4.974205, walk_id: walk1.id )


Step.create(name: "départ", latitude:45.722911, longitude: 4.9035064, walk_id: walk4.id )
Step.create(name: "hypodrome", latitude:45.7225931, longitude: 4.9151265, walk_id: walk4.id )
Step.create(name: "parc à chiens", latitude:45.7128903, longitude: 4.8985139, walk_id: walk4.id )


p "creation of walk's reviews"

WalkReview.create(content: "Balade sympa", rating: 4, walk_id: walk1.id)
WalkReview.create(content: "Beaucoup de monde et de barbecue l'été", rating: 2, walk_id: walk1.id)




p "finished"
