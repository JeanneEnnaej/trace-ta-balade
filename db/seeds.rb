p "creation des advantages"

advantages = %w[ parking ombragé eau fréquentation ]

advantages.each do |a|
  Advantage.create(
    name: a
  )
end

p "creation des disadvantages"

disadvantages = %w[ parking denivelé route fréquentation ]

disadvantages.each do |d|
  Disadvantage.create(
    name: d
  )
end

p "finito"
