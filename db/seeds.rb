# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts " Seeding Heroes..."
 Hero.create!([
  {name:"Peter Parker", super_name:"Spider-Man"},
  {name:"Steve Rogers", super_name:"Captain America"},
  {name:"Bruce Banner", super_name:"Hulk"},
  {name:"Natasha Romanoff", super_name:"Black Widow"},
 ])

 puts "seeding Powers..."
  Power.create!([
    {name:"super strength",description: "gives the wielder super human strengths"},
    {name:"flight",description: "gives the wielder the ability to fly through the skys at supersonic speed"},
    {name:"super human senses",description: "allows the person to user their senses at super human level"},
    {name:"elasticity",description: "can stretch the human body to extreme lengths"}
  ])
 puts "seeding Heropowers........"

#  Hero.all.each do |hero|
#     rand(1..5).times do
#         power = Power.find(Power.pluck(:id).sample)

#         HeroPower.create!(hero_id: hero.id, power_id: power.id, strength: rand("strong","average","weak"))
#     end
# end

 
   #HeroPower seed data
HeroePower.create(strength: "Strong", hero_id: 1, heroe_power: 1)
HeroePower.create(strength: "Weak", hero_id: 2, heroe_power: 2)
HeroePower.create(strength: "Average", hero_id: 1, heroe_power: 2)
HeroePower.create(strength: "Strong", hero_id: 2, heroe_power: 1)

puts "Seeding data completed successfully!"

