# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'csv'
#
# csv = CSV.read("candidates.csv")
# i = 3
# 21.times do
#   Candidate.create(name: csv[i][0], age: csv[i][1], bio: csv[i][i], current_position: csv[i][4], state: csv[i][5], website: csv[i][6], logo: csv[i][7], born: csv[i][8], twitter: csv[i][9])
#   i += 1
# end

policy1 = Policy.create(title: "Healthcare", description: "Warren has voiced support for the idea of Medicare-for-All")

policy2 = Policy.create(title: "Criminal Justice Reform", description: "In June, Warren released a plan to ban private prisons, stop contractors from marking up prices on commissary goods, and install an independent Prison Conditions Monitor inside Department of Justice’s Office of the Inspector General.")
#
policy3 = Policy.create(title: "Taxes and Economics", description: "Warren has the most aggressive tax-the-rich proposal in the field. Under her 'Ultra-Millionaire' wealth tax, households with a net worth of more than $50 million would be taxed 2 percent on every dollar of net worth above $50 million, and a 3 percent on every dollar of net worth above $1 billion.")

policy4 = Policy.create(title: "Immigration", description: "In July, she delivered by unveiling a sweeping plan that includes 'remaking' ICE and Customs and Border Protection; allowing more refugees into the United States; ending the abuse of migrants and reducing detention; and decriminalizing border crossings.")

policy5 = Policy.create(title: "The Climate Crisis", description: "Warren’s 'Green Manufacturing Plan' takes inspiration from both the Apollo program and the Marshall Plan to 'develop, manufacture, and export the technology the world needs to confront the existential threat of climate change.'")

# policy6 = Policy.create(title: "Identity and Social Justice", description: "In June, Moutlon unveiled a plan to review and upgrade service members who were less-than-honorably discharged because of sexual orientation or 'homosexual activity.'")

policy7 = Policy.create(title: "Education", description: "Arguing that crushing student loan debt is reducing rates of homeownership, discouraging people from starting businesses, and forcing students to drop out before graduating, Warren has declared that she would cancel up to $50,000 in student-loan debt for 42 million Americans, almost completely wiping out educational debt for three-quarters of the country’s borrowers.")

policy8 = Policy.create(title: "Business and Tech Regulation", description: "In March, Warren released a plan to break up Facebook, Google, and Amazon, companies she argues have 'too much power over our economy, our society, and our democracy.'")

policy9 = Policy.create(title: "Family Issues", description: "Warren introduced the Universal Child Care and Early Learning Act in June. Among other provisions, it would ensure that no family pays more than seven percent of their income for child care, create a federally funded network of child care centers, and guarantee day care workers were paid on par with public school teachers.")


policy10 = Policy.create(title: "Foreign Policy", description: "Last fall, before officially declaring her candidacy, Warren outlined in broad strokes her vision for a progressive foreign policy in an op-ed in Foreign Affairs. Among other goals, Warren emphasized the importance of ensuring trade negotiations are 'used to curtail the power of multinational monopolies and crack down on tax havens,' of making 'honest assessments of the full costs and risks associated with going to war,' and of committing to 'reprioritize diplomacy and reinvest in the State Department and the development agencies.'")

policy11 = Policy.create(title: "Guns", description: "After the August shootings that left 31 dead in El Paso and Dayton, however, Warren unveiled a wide-ranging plan aimed at reducing gun violence by 80 percent.")

policy12 = Policy.create(title: "Reproductive Rights", description: "Warren has issued a Congressional call to action to protect reproductive rights. She proposes ending the Hyde Amendment and for federal laws that would enshrine the protections of Roe v. Wade no matter what state you live in. In the same proposal, she calls for repealing the Trump administration’s gag rule that bars certain physicians from discussing abortion with their patients, and for an increase in funding for Title X, the federal government’s family planning programs.")

policy13 = Policy.create(title: "Government Reform and Anti-Corruption", description: "Warren announced early on in her campaign that she would not court or accept contributions from big-money donors — a decision that ultimately resulted in her finance director quitting the campaign.")

policy14 = Policy.create(title: "Poverty and Inequality", description: "Warren released a plan to invest in rural America. The plan calls for increased government investment in rural communities, including creating a 'public option for broadband'; strengthening health care and economic security; and breaking up the agribusiness corporations that have been crippling smaller farmers for years.")

policy15 = Policy.create(title: "Housing", description: "Warren’s housing plan is built around the American Housing and Economic Mobility Act, which she initially introduced to the Senate in 2018. The bill would set aside $500 billion over the next 10 years to 'build, preserve, and rehab units that will be affordable to lower-income families.'")

policy16 = Policy.create(title: "Voting Rights", description: "In June, Warren released a plan to fortify federal elections. The plan calls for modernizing election machines; blanket, federal standards including same-day registration, early voting, and vote-by-mail, rather than the current state-by-state regulations; measures to end gerrymandering; and making Election Day a national holiday.")

policy17 = Policy.create(title: "Reparations", description: "Warren supports offering reparations to black Americans in recognition of the economic toll of slavery.")

CandidatePolicy.create(candidate_id: 23, policy_id: policy1[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy2[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy3[:id])
CandidatePolicy.create(candidate_id: 23, policy_id: policy4[:id])
CandidatePolicy.create(candidate_id: 23, policy_id: policy5[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy6[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy7[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy8[:id])
CandidatePolicy.create(candidate_id: 23, policy_id: policy9[:id])
CandidatePolicy.create(candidate_id: 23, policy_id: policy10[:id])
CandidatePolicy.create(candidate_id: 23, policy_id: policy11[:id])
CandidatePolicy.create(candidate_id: 23, policy_id: policy12[:id])
CandidatePolicy.create(candidate_id: 23, policy_id: policy13[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy14[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy15[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy16[:id])
# CandidatePolicy.create(candidate_id: 23, policy_id: policy17[:id])
