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

p "finito"
