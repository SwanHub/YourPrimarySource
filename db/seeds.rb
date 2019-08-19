# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Candidate.destroy_all
Policy.destroy_all
User.destroy_all

Candidate.create(name: "Elizabeth", age: 54, bio: "born yonder", years_in_government: 47, current_position: "governor", state: "MA", website: "https://elizabethwarren.com/issues")
Candidate.create(name: "Geoff", age: 44, bio: "the old attorney general", years_in_government: 27, current_position: "recuser", state: "Extradited", website: "https://www.justice.gov/ag")

Policy.create(title: "More ithecreams!!", description: "All who enjoy should get ithecream for free.", category: "Agriculture")
Policy.create(title: "Free money", description: "All who enjoy money should get money for free.", category: "Monetary")

Post.create(title: "Agree with Baker", content: "There should always be free money.", user_id: 2, policy_id: 2)
