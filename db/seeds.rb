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
reviews = ["En politique, mon cher, vous le savez comme moi, il n'y a pas d'hommes, mais des idées ;
  pas de sentiments, mais des intérêts ; en politique, on ne tue pas un homme : on supprime un obstacle, voilà tout.","Apprendre n'est pas savoir ; il y a les sachant et les savants : c'est la mémoire qui fait les uns, c'est le philosophie qui fait les autres.
  - Mais ne peut-on apprendre la philosophie ?","La philosophie ne s'apprend pas ; la philosophie est la réunion des sciences acquises au génie qui les applique : la philosophie, c'est le nuage éclatant sur lequel le Christ a posé le pied pour remonter au ciel." ]

reviews.each do |r|
  Review.create(
    content: r
  )
end
p "finito"
