# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# i = 3
# 21.times do
#   Candidate.create(name: csv[i][0], age: csv[i][1], bio: csv[i][i], current_position: csv[i][4], state: csv[i][5], website: csv[i][6], logo: csv[i][7], born: csv[i][8], twitter: csv[i][9])
#   i += 1
# end
# policy1 = Policy.create(title: "Healthcare", description: "")
# CandidatePolicy.create(candidate_id: 25, policy_id: policy1[:id])


# require 'csv'
#
# csv = CSV.read("polling.csv")
#
# sources = csv.map{|row| row[0]}
# dates = csv.map{|row| row[1]}
# candidate = csv.map{|row| row[14]}
# # williamson 14
#
# candidate_array = []
# i = 1
# 106.times do
#    candidate_array << {source: sources[i], date: dates[i], value: candidate[i]}
#    i += 1
# end
#
# candidate_array.each do |poll|
#   Poll.create(value: poll[:value], date: poll[:date], source: poll[:source], candidate_id: 24)
# end
