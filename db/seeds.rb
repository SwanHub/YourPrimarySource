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

policy1 = Policy.create(title: "Healthcare", description: "Klobuchar sees Medicare-for-All as a 'possibility in the future,' but says she’s focused on more immediately achievable results. The Minnesota senator feels the path to universal health care begins by expanding the Affordable Care Act to include a public option — specifically allowing insurance customers on state exchanges to buy into Medicaid, the program that currently serves the disadvantaged.")

policy2 = Policy.create(title: "Criminal Justice Reform", description: "A former prosecutor who declined to file charges against nearly two dozen officers who killed suspects, Klobuchar wrote in an op-ed for CNN that 'we have finally started to acknowledge that there is racism in our criminal justice system and that we need to take action to fight it.' She has proposed creating a federal clemency advisory board, and appointing a White House post, outside of the Department of Justice, to shape policies on criminal justice reform.")
#
# policy3 = Policy.create(title: "Taxes and Economics", description: "Biden has pledged to close $1.6 trillion in 'tax loopholes.'")

policy4 = Policy.create(title: "Immigration", description: "Klobuchar supports a pathway to citizenship for most undocumented immigrants and an increase in legal immigration. She calls for reform, rather than abolition, of ICE.")

policy5 = Policy.create(title: "The Climate Crisis", description: "Klobuchar co-sponsored the Green New Deal as an 'aspiration,' calling it 'a framework to jump-start a discussion.' She pledges a restoration of Obama-era climate policies, including rejoining the Paris climate accord on Day One and restoring the Clean Power Plan and Obama’s fuel-efficiency standards for vehicles. She’s also called for 'sweeping legislation' for green buildings. She has said that within her first 100 days in office she will introduce climate legislation that will put the United States on a path to net zero carbon emissions by 2050.")

# policy6 = Policy.create(title: "Identity and Social Justice", description: "Harris has released what her website describes as the 'most aggressive equal pay proposal in history.' The plan calls for companies to obtain 'Equal Pay Certification,' which involves proving through various means that they are not giving preferential treatment to men over women in regard to pay, promotions, and more.")

policy7 = Policy.create(title: "Education", description: "Klobuchar does not support free public-college tuition, suggesting that it would take a 'magic genie' to be able to afford such a policy. Klobuchar does support free community college, better refinancing options for student debt, and an expansion of Pell grants.")

policy8 = Policy.create(title: "Family Issues", description: "Klobuchar is a co-sponsor of the American Family Act, which would send parents as much as $300 per month, per child, to defray the costs of raising a family. Klobuchar has been a vocal proponent of family-leave policies, but her own office’s policy called for women to repay the leave benefits they used.")


policy9 = Policy.create(title: "Foreign Policy", description: "Klobuchar has decried Trump’s 'foreign policy by tweet.' She voted with Republicans in a resolution of disapproval when Trump announced a precipitous withdrawal of American troops from Syria and Afghanistan.")

policy10 = Policy.create(title: "Guns", description: "Klobuchar supports an assault weapons ban, universal background checks, and closing the 'boyfriend loophole,' which allows some domestic abusers to purchase guns so long as they were not married to the victim. She has said she balances her support of gun control against the interests of her sportsmen relatives.")

policy11 = Policy.create(title: "Reproductive Rights", description: "Klobuchar has said she’d seek to codify Roe v. Wade in law if it were overturned by the Supreme Court, and has called the slate of anti-abortion legislation in states like Alabama and Georgia 'a violation of civil rights.' In the past, Klobuchar has spoken of seeking 'common ground' on abortions, 'making them safe and making them rare.'")

# policy12 = Policy.create(title: "Government Reform and Anti-Corruption", description: "Inslee pledged not to accept any donations tied to the fossil fuel industry and has refused any corporate PAC money. He’s faced criticism from reform groups for not disavowing a single-candidate Super PAC devoted to helping his campaign.")

policy13 = Policy.create(title: "Poverty and Inequality", description: "Klobuchar wants to raise the corporate income tax from its Trump-tax-cut low of 21 percent to 25 percent as part of a plan to pay for a $650 billion infrastructure package. Klobuchar has also said that she will increase the minimum wage for federal contractors to $15 per hour within her first 100 days in office.")

# policy14 = Policy.create(title: "Housing", description: "In April, Harris reintroduced to the Senate her Rent Relief Act, a bill aimed at combating rising rent costs by offering a refundable tax credit to Americans making less than $100,000 a year who spending at least 30 percent of their income on rent and utilities.")

policy15 = Policy.create(title: "Voting Rights", description: "Klobuchar supports federal, automatic voter registration at age 18, a reform she says could create 22 million new voters. She has also emphasized the role of state governments in expanding voting rights.")
#
policy16 = Policy.create(title: "Reparations", description: "Klobuchar has called for investment in communities hurt by racism but insisted, 'it doesn’t have to be a direct pay for each person.'")

CandidatePolicy.create(candidate_id: 15, policy_id: policy1[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy2[:id])
# CandidatePolicy.create(candidate_id: 15, policy_id: policy3[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy4[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy5[:id])
# CandidatePolicy.create(candidate_id: 15, policy_id: policy6[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy7[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy8[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy9[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy10[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy11[:id])
# CandidatePolicy.create(candidate_id: 15, policy_id: policy12[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy13[:id])
# CandidatePolicy.create(candidate_id: 15, policy_id: policy14[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy15[:id])
CandidatePolicy.create(candidate_id: 15, policy_id: policy16[:id])
