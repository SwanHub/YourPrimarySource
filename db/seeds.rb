require 'csv'
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

# INSERTING FINANCIALS FOR EACH CANDIDATE.

# require 'csv'
#
# csv = CSV.read("finance.csv")
#
# i = 1
# 21.times do
#     candidate = Candidate.find(csv[i][0])
#     candidate.update(total_receipts: csv[i][1], total_disbursements: csv[i][2], cash_on_hand: csv[i][3])
#     i += 1
# end

# Cory Booker Seed Information
  # policy1 = Policy.create(title: "Healthcare", description: "Booker supports Medicare for all. 'Our broken health care system costs too much, is unsustainable, inefficient, unequal and unjust,' he tweeted in March. 'No one living in the richest country in the world should die or go bankrupt because they can’t afford quality care. We need Medicare for all.'")
  #
  # policy2 = Policy.create(title: "Criminal Justice Reform", description: "Booker has led within the Democratic Party on criminal justice reform. He helped pass the First Step Act, which freed thousands of inmates sentenced to prison for drug-related offenses. He then introduced the Next Step Act to scale back mandatory minimum sentences for non-violent drug offenses, ban employers from asking prospective hires about their criminal history until late in the interview process, and improve training for law enforcement officers on racial bias issues.")
  #
  # policy3 = Policy.create(title: "Immigration", description: "In July, Booker unveiled a plan aimed at fixing America’s immigration system that includes a promise to 'shut down inhumane facilities and require all facilities to meet the highest standards' on his first day in office. The plan also calls for expanding protections for DACA, expanding the availability of legal counseling for migrants seeking asylum, reforming Immigration and Customs Enforcement and Customs and Border Protection, appointing a special envoy to the North Triangle countries (Guatemala, Honduras, and El Salvador) producing many of the migrants traveling to the southern border, reversing immigration policies put in place by the Trump administration, and more. ")
  #
  # policy4 = Policy.create(title: "The Climate Crisis", description: "Booker says he backs the Green New Deal and recommitting the U.S. to the Paris climate accord.")
  #
  # policy5 = Policy.create(title: "Education", description: "Booker has introduced legislation to make college debt-free. The bill would match state-level investments in higher ed with federal dollars so that students don’t have to take on debt to get a degree.")
  #
  # policy6 = Policy.create(title: "Foreign Policy", description: "Foreign policy has not been a centerpiece of Booker’s campaign so far, but as a member of the Senate Foreign Affairs Committee he has spoken out against the Trump administration’s shadow war in Syria and against arm deals with Saudi Arabia. He backed the Iran nuclear deal and condemned Trump’s decision to pull out of it as 'an abdication of American leadership.'")
  #
  # policy7 = Policy.create(title: "Guns", description: "Booker’s plan is one of the more ambitious in the field. It calls for universal background checks and mandatory gun licenses to purchase a firearm, ratcheting up federal regulations of gun manufacturers (including giving the Consumer Product Safety Commission the power to oversee the industry), closing the 'gun-show loophole,' and more.")
  #
  # policy8 = Policy.create(title: "Reproductive Rights", description: "In May, Booker slammed Georgia’s draconian 'fetal heartbeat' bill as an 'all-out attack on women.' Later that month, he released a plan that includes several measures to bolster reproductive rights, including the creation of a White House Office of Reproductive Freedom that would be 'charged with coordinating and affirmatively advancing abortion rights and access to reproductive health care across my Administration .'")
  #
  # policy9 = Policy.create(title: "Poverty and Inequality", description: "Booker’s signature economic policy is 'baby bonds,' which are aimed at closing America’s glaring racial wealth gap by seeding 'American Opportunity Accounts' for children. Every newborn baby in America would get $1,000 in a low-risk savings account managed by the Treasury Department. Children in low-income families would get an additional $2,000 per year until they’re 18.")
  #
  # policy10 = Policy.create(title: "Voting Rights", description: "Booker has pledged to put in place a new Voting Rights Act, a package of reforms that would combat voter suppression efforts (like those seen in Georgia’s 2018 gubernatorial election), end partisan gerrymandering, enact universal voter registration, and give former felons the ability to regain their right to vote.")
  #
  # policy11 = Policy.create(title: "Reparations", description: "One of the most vocal candidates on the issue, Booker introduced legislation in April to launch a federal commission to study federal reparations for African Americans.")
  #
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy1.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy2.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy3.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy4.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy5.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy6.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy7.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy8.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy9.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy10.id)
  # CandidatePolicy.create(candidate_id: 26, policy_id: policy11.id)


# csv = CSV.read("policies3.csv")
#
# row = 1
# 23.times do
#
#         i = 1
#         23.times do
#           if csv[row][i]
#             policy_created = Policy.create(title: csv[0][i], description: csv[row][i])
#
#             CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[row][0]).id, policy_id: policy_created.id)
#             i += 1
#           end
#         end
#
# column += 1
# end

# csv = CSV.read("new_polling.csv")
# #
# sources = csv.map{|row| row[0]}
# dates = csv.map{|row| row[1]}
# candidate = csv.map{|row| row[14]}
#
# candidate_array = []
# i = 1
# 106.times do
#    candidate_array << {source: sources[i], date: dates[i], value: candidate[i]}
#    i += 1
# end
#
# candidate_array.each do |poll|
#   Poll.create(value: poll[:value], date: poll[:date], source: poll[:source], candidate_id: 13)
# end

#
# CandidatePolicy.destroy_all
# Policy.destroy_all
# Candidate.destroy_all
# # User.destroy_all
#
# Candidate.create(
#   name: "Tulsi Gabbard",
#   age: 38,
#   bio: "Tulsi Gabbard (born April 12, 1981) is an American politician and military combat veteran serving as the U.S. Representative for Hawaii's 2nd congressional district since 2013. She is a member of the Democratic Party. First elected in 2012, she became the first Samoan American and the first Hindu member of the United States Congress.",
#   current_position: "U.S. Representative",
#   state: "Hawaii",
#   website: "https://www.tulsi2020.com/",
#   twitter: "https://twitter.com/TulsiGabbard",
#   logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Tulsi_Gabbard_2020_presidential_campaign_logo.svg/1280px-Tulsi_Gabbard_2020_presidential_campaign_logo.svg.png",
#   image: "https://upload.wikimedia.org/wikipedia/commons/2/2a/Tulsi_Gabbard%2C_official_portrait%2C_113th_Congress.jpg",
#   born: "Leloaloa, American Samoa")
#
# Candidate.create(
#   name: "John Delaney",
#   age: 56,
#   bio: "John Kevin Delaney (born April 16, 1963) is an American attorney, businessman, and politician who is running for President of the United States in 2020. He was the United States Representative for Maryland's 6th congressional district from 2013 to 2019.",
#   current_position: "U.S. Representative",
#   state: "Maryland",
#   website: "https://www.johndelaney.com/",
#   twitter: "https://twitter.com/JohnDelaney",
#   logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/John_Delaney_2020_logo.svg/1280px-John_Delaney_2020_logo.svg.png",
#   image: "https://mediad.publicbroadcasting.net/p/nhpr/files/styles/x_large/public/201903/John_Delaney_113th_Congress_official_photo.jpg",
#   born: "Wood-Ridge, New Jersey")
#
# Candidate.create(
#   name: "Kirsten Gillibrand",
#   age: 52,
#   bio: "Kirsten Elizabeth Gillibrand (born December 9, 1966) is an American lawyer and politician who has served as the junior United States Senator from New York since 2009. A member of the Democratic Party, she was a member of the U.S. House of Representatives from 2007 to 2009.",
#   current_position: "U.S. Senator",
#   state: "New York",
#   website: "https://kirstengillibrand.com/",
#   twitter: "https://twitter.com/SenGillibrand",
#   logo: "https://kirstengillibrand.com/wp-content/themes/gillibrand/img/logo.svg?v=2",
#   image: "https://upload.wikimedia.org/wikipedia/commons/9/9a/Kirsten_Gillibrand%2C_official_photo%2C_116th_Congress.jpg",
#   born: "Albany, New York")
#
# Candidate.create(
#   name: "Joe Biden",
#   age: 76,
#   bio: "Joseph Robinette Biden Jr. (born November 20, 1942) is an American politician who served as the 47th vice president of the United States from 2009 to 2017. Biden also represented Delaware in the U.S. Senate from 1973 to 2009. A member of the Democratic Party, Biden is a candidate for President in the 2020 election.",
#   current_position: "Former Vice President of the United States",
#   state: "Deleware",
#   website: "https://joebiden.com/",
#   twitter: "https://twitter.com/JoeBiden",
#   logo: "https://joebiden.com/wp-content/themes/bexc/img/logo.svg",
#   image: "https://vignette.wikia.nocookie.net/althistory/images/a/a9/Official_portrait_of_President_Biden.png/revision/latest?cb=20161101224045",
#   born: "Scranton, Pennsylvania")
#
# Candidate.create(
#   name: "Michael Bennet",
#   age: 54,
#   bio: "Michael Farrand Bennet (born November 28, 1964) is an American businessman, lawyer, and politician serving as the senior United States Senator from Colorado since 2009. A member of the Democratic Party, he was appointed to the seat when Senator Ken Salazar becameSecretary of the Interior. Bennet previously worked as a managing director for theAnschutz Investment Company, chief of staff to Denver Mayor John Hicken looper, and Superintendent of Denver Public Schools.",
#   current_position: "U.S. Senator",
#   state: "Colorado",
#   website: "https://michaelbennet.com/",
#   twitter: "https://twitter.com/SenatorBennet",
#   logo: "data:image/png;base64,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",
#   image: "https://upload.wikimedia.org/wikipedia/commons/f/fc/Michael_Bennet_Official_Photo.jpg",
#   born: "New Delhi, India")
#
#   Candidate.create(
#     name: "Pete Buttigieg",
#     age: 37,
#     bio: "Peter Paul Montgomery Buttigieg (born January 19, 1982) is an American politician and former U.S. Naval Reserve officer who has served as mayor of South Bend, Indiana since 2012. He is one of three combat veterans running for the Democratic Party nomination in the 2020 United States presidential election.",
#     current_position: "Mayor",
#     state: "Indiana",
#     website: "https://peteforamerica.com/",
#     twitter: "https://twitter.com/PeteButtigieg",
#     logo: "https://peteforamerica.com/wp-content/themes/pete-for-america/resources/images/pete-main-logo.svg",
#     image: "https://southbendin.gov/wp-content/uploads/2018/05/pete-buttigieg-mayor-south-bend-in.jpg",
#     born: "South Bend, Indiana")
#
#   Candidate.create(
#     name: "Steve Bullock",
#     age: 53,
#     bio: "Stephen Clark Bullock (born April 11, 1966) is an American politician, attorney and former professor serving as the 24th and current Governor of Montana since 2013. He is a member of the Democratic Party.",
#     current_position: "Governor",
#     state: "Montana",
#     website: "https://stevebullock.com/",
#     twitter: "https://twitter.com/GovernorBullock",
#     logo: "data:image/png;base64,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",
#     image: "https://localtvktvi.files.wordpress.com/2019/05/s109134916.jpg?quality=85&strip=all&resize=1200,1791",
#     born: "Missoula, Montana")
#
#   Candidate.create(
#     name: "Julian Castro",
#     age: 44,
#     bio: "Julián Castro (born September 16, 1974) is an American politician from San Antonio. A member of the Democratic Party, he was the youngest member of President Obama's Cabinet, serving as the 16th United States Secretary of Housing and Urban Development from 2014 to 2017. Castro served as the mayor of his native San Antonio, Texas from 2009 until he joined Barack Obama's cabinet in 2014.",
#     current_position: "Former Secretary of Housing and Urban Development",
#     state: "Texas",
#     website: "https://www.julianforthefuture.com/",
#     twitter: "https://twitter.com/JulianCastro",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Julian_Castro_2020_presidential_campaign_logo.svg/1200px-Julian_Castro_2020_presidential_campaign_logo.svg.png",
#     image: "https://upload.wikimedia.org/wikipedia/commons/c/c6/Juli%C3%A1n_Castro%27s_Official_HUD_Portrait.jpg",
#     born: "San Antonio, Texas")
#
#   Candidate.create(
#     name: "Bill de Blasio",
#     age: 58,
#     bio: "Bill de Blasio (born Warren Wilhelm Jr.; May 8, 1961) is an American politician who since 2014 has served as the 109th Mayor of New York City. Prior to his first election to the position of Mayor, he served as New York City's public advocate from 2010 to 2013.",
#     current_position: "Mayor",
#     state: "New York",
#     website: "https://billdeblasio.com/",
#     twitter: "https://twitter.com/BilldeBlasio",
#     logo: "data:image/png;base64,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",
#     image: "https://i1.wp.com/www.norwoodnews.org/wp-content/uploads/2017/03/Mayor-Bill-de-Blasio.jpg?ssl=1",
#     born: "Manhattan, New York")
#
#   Candidate.create(
#     name: "Seth Moulton",
#     age: 40,
#     bio: "Seth Wilbur Moulton (born October 24, 1978) is an American politician serving as the U.S. Representative for Massachusetts's 6th congressional district since 2015. A former Marine Corps officer, he is a member of the Democratic Party.",
#     current_position: "U.S. Representative",
#     state: "Massachusetts",
#     website: "https://sethmoulton.com/",
#     twitter: "https://twitter.com/sethmoulton",
#     logo: "https://lever-client-logos.s3.amazonaws.com/2ebee8db-ab85-4957-b8e0-f26a7485f3ec-1559846101973.png",
#     image: "https://moulton.house.gov/wp-content/uploads/2015/07/SWM-Headshot.jpg",
#     born: "Salem, Massachusetts")
#
#   Candidate.create(
#     name: "Tim Ryan",
#     age: 46,
#     bio: "Timothy John Ryan (born July 16, 1973) is an American politician serving as the U.S. Representative for Ohio's 13th congressional district since 2003. The district, numbered as the 17th district from 2003 to 2013, takes in a large swath of northeast Ohio, from Youngstown to Akron. Ryan is a member of the Democratic Party.",
#     current_position: "U.S. Representative",
#     state: "Ohio",
#     website: "https://timryanforamerica.com/",
#     twitter: "https://twitter.com/TimRyan",
#     logo: "https://timryanforamerica.com/wp-content/uploads/2019/04/main-logo-3.png",
#     image: "http://chqdaily.com/wp-content/uploads/2018/07/Screen-Shot-2018-07-29-at-7.46.02-PM.png",
#     born: "Niles, Ohio")
#
#   Candidate.create(
#     name: "Joe Sestak",
#     age: 67,
#     bio: "Joseph Ambrose Sestak Jr. (born December 12, 1951) is an American politician and retired U.S. Navy officer. A member of the Democratic Party, he represented Pennsylvania's 7th congressional district in the U.S. House of Representatives from 2007 to 2011 and was the Democratic nominee for the United States Senate in 2010. A three-star vice admiral, he was the highest-ranking military official ever elected to the United States Congress at the time of his election. He is a candidate for the Democratic presidential nomination in the 2020 election.",
#     current_position: "U.S. Representative",
#     state: "Pennsylvania",
#     website: "https://www.joesestak.com/",
#     twitter: "https://twitter.com/JoeSestak",
#     logo: "https://www.joesestak.com/wp-content/themes/joesestak/img/logo2.svg",
#     image: "https://upload.wikimedia.org/wikipedia/commons/1/16/Rear_Admiral_Joseph_A._Sestak.jpeg",
#     born: "Secane, Pennsylvania")
# #
#   Candidate.create(
#     name: "Marianne Williamson",
#     age: 67,
#     bio: "Marianne Deborah Williamson (born July 8, 1952) is an American author, lecturer and activist. She has written 13 books, including four New York Times number one bestsellers in the 'Advice, How To and Miscellaneous' category. She is the founder of Project Angel Food, a volunteer food delivery program that serves home-bound people with HIV/AIDS and other life-threatening illnesses. She is also the co-founder of the Peace Alliance, a nonprofit grassroots education and advocacy organization supporting peace-building projects.",
#     current_position: "Author",
#     state: "Iowa",
#     website: "https://www.marianne2020.com/",
#     twitter: "https://twitter.com/marwilliamson",
#     logo: "https://assets-global.website-files.com/5c1fa992fd28a7d62be97904/5c2ea2ff3ded385160945e68_MW_logo_01%402x-p-500.jpeg",
#     image: "https://www.nhpr.org/sites/nhpr/files/styles/medium/public/201904/Marianne_Williamson.jpg",
#     born: "Houston, Texas")
#
#   Candidate.create(
#     name: "Jay Inslee",
#     age: 68,
#     bio: "Jay Robert Inslee (born February 9, 1951) is an American politician, author, and lawyer serving as the 23rd and current governor of Washington since 2013. A Democrat, he served in the United States House of Representatives from 1993 to 1995 and then again from 1999 to 2012.",
#     current_position: "Governor",
#     state: "Washington",
#     website: "https://www.jayinslee.com/",
#     twitter: "https://twitter.com/JayInslee",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Jay_Inslee_2020_presidential_campaign_logo.svg/1200px-Jay_Inslee_2020_presidential_campaign_logo.svg.png",
#     image: "https://live.staticflickr.com/539/32768464765_0a70139999_b.jpg",
#     born: "Seattle, Washington")
#
#   Candidate.create(
#     name: "Beto O'Rourke",
#     age: 46,
#     bio: "Robert Francis 'Beto' O'Rourke (born September 26, 1972) is an American politician who represented Texas's 16th congressional district in the United States House of Representatives from 2013 to 2019. O'Rourke is seeking the Democratic nomination for President of the United States in 2020.",
#     current_position: "U.S. Representative",
#     state: "Texas",
#     website: "https://betoorourke.com/",
#     twitter: "https://twitter.com/BetoORourke",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Beto_O%27Rourke_2020_presidential_campaign_logo.svg/1200px-Beto_O%27Rourke_2020_presidential_campaign_logo.svg.png",
#     image: "https://upload.wikimedia.org/wikipedia/commons/a/ad/Beto_O%27Rourke%2C_Official_portrait%2C_113th_Congress.jpg",
#     born: "El Paso, Texas")
#
#   Candidate.create(
#     name: "Amy Klobuchar",
#     age: 59,
#     bio: "Amy Jean Klobuchar (born May 25, 1960) is an American lawyer and politician serving as the senior United States Senator from Minnesota. A member of the Minnesota Democratic-Farmer-Labor Party, Minnesota's affiliate of the Democratic Party, she previously served as the Hennepin County Attorney.",
#     current_position: "U.S. Senator",
#     state: "Minnesota",
#     website: "https://amyklobuchar.com/",
#     twitter: "https://twitter.com/amyklobuchar",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Amy_Klobuchar_2020_presidential_campaign_logo.svg/1280px-Amy_Klobuchar_2020_presidential_campaign_logo.svg.pn",
#     image: "https://upload.wikimedia.org/wikipedia/commons/3/3b/Amy_Klobuchar%2C_official_portrait%2C_113th_Congress_%28cropped%29.jpg",
#     born: "Plymouth, Minnesota")
#
#   Candidate.create(
#     name: "Wayne Messam",
#     age: 45,
#     bio: "Wayne Martin Messam (born June 7, 1974) is an American businessman and politician serving as the mayor of Miramar, Florida, a position he has held since 2015. A member of the Democratic Party, he was first elected to the Miramar City Commission in 2011 before defeating incumbent mayor Lori Cohen Moseley in the 2015 election. Messam is also a general contractor and owner of a construction firm. On March 28, 2019, he announced his campaign to run for the Democratic nomination for President of the United States in the 2020 United States presidential election.",
#     current_position: "Mayor",
#     state: "Florida",
#     website: "https://wayneforusa.com/",
#     twitter: "https://twitter.com/WayneMessam",
#     logo: "https://wayneforusa.com/wp-content/uploads/2019/03/w4a-161w@2x.png",
#     image: "https://madison365.com/wp-content/uploads/2019/03/Mayor_Messam.jpg",
#     born: "South Bay, Florida")
#
#   Candidate.create(
#     name: "Tom Steyer",
#     age: 62,
#     bio: "Thomas Fahr Steyer (born June 27, 1957) is an American billionaire hedge fundmanager, philanthropist, environmentalist, liberal activist, and fundraiser. He is a candidate in the 2020 Democratic Party presidential primaries.",
#     current_position: "Hedge Fund Manager",
#     state: "California",
#     website: "https://www.tomsteyer.com/",
#     twitter: "https://twitter.com/TomSteyer",
#     logo: "https://www.tomsteyer.com/wp-content/themes/timber/dist/img/ts2020-logo-w.svg",
#     image: "https://image.cnbcfm.com/api/v1/image/106014577-1562872406443tom-steyer-portrait-a.jpg?v=1562872521&w=1400&h=950",
#     born: "Manhattan, New York")
#
#   Candidate.create(
#     name: "Andrew Yang",
#     age: 44,
#     bio: "Andrew Yang (born January 13, 1975) is an American 2020 Democratic presidential candidate, entrepreneur, lawyer, and philanthropist. He is the founder of Venture for America (VFA), a nonprofit that focuses on creating jobs in struggling American cities. Yang worked in various startups and early stage growth companies as a founder or executive from 2000 to 2009. After he founded VFA in 2011, the Obama administration selected him in 2012 as a 'Champion of Change' and in 2015 as a 'Presidential Ambassador for Global Entrepreneurship'. Yang is the author of the 2014 book Smart People Should Build Things and the 2018 book The War on Normal People.",
#     current_position: "Entrepreneur",
#     state: "New York",
#     website: "https://www.yang2020.com/",
#     twitter: "https://twitter.com/AndrewYang",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/c/c7/Andrew_Yang_2020_logo.png",
#     image: "https://miro.medium.com/max/1200/1*LVh6dFQRV74sFXRO1ZLacQ.png",
#     born: "Schenectady, New York")
#
#   Candidate.create(
#     name: "Bernie Sanders",
#     age: 77,
#     bio: "Bernard Sanders (born September 8, 1941) is an American politician who has served as the junior United States Senator from Vermont since 2007. Vermont's at-large Congressman from 1991 to 2007, he is the longest serving independent in U.S. congressional history and a member of the Democratic caucus. Sanders ran unsuccessfully for the 2016 Democratic nomination for president and is running again in 2020. A self-described democratic socialist and progressive, Sanders is known for his opposition to economic inequality. On domestic policy, he broadly supports labor rights, and has supported universal and single-payer healthcare, paid parental leave, and tuition-free tertiary education. On foreign policy, he broadly supports reducing military spending, pursuing more diplomacy and international cooperation, and putting greater emphasis on labor rights and environmental concerns when negotiating international trade agreements.",
#     current_position: "U.S. Senator",
#     state: "Vermont",
#     website: "https://berniesanders.com/",
#     twitter: "https://twitter.com/BernieSanders",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Bernie_Sanders_2020_logo.svg/1280px-Bernie_Sanders_2020_logo.svg.png",
#     image: "https://upload.wikimedia.org/wikipedia/commons/d/de/Bernie_Sanders.jpg",
#     born: "Brooklyn, New York")
#
#   Candidate.create(
#     name: "Elizabeth Warren",
#     age: 70,
#     bio: "Elizabeth Ann Warren (born June 22, 1949) is an American Democratic politician and former academic serving as the senior United States Senator from Massachusetts since 2013. Warren was formerly a law school professor specializing in bankruptcy law. A progressive, she has focused on consumer protection, economic opportunity, and the social safety net while in the Senate.",
#     current_position: "U.S. Senator",
#     state: "Massachusetts",
#     website: "https://elizabethwarren.com/",
#     twitter: "https://twitter.com/ewarren",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Elizabeth_Warren_2020_presidential_campaign_logo.svg/1280px-Elizabeth_Warren_2020_presidential_campaign_logo.svg.png",
#     image: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Elizabeth_Warren%2C_official_portrait%2C_114th_Congress.jpg",
#     born: "Oklahoma City, Oklahoma")
#
#   Candidate.create(
#     name: "Cory Booker",
#     age: 50,
#     bio: "Cory Anthony Booker (born April 27, 1969) is an American politician serving as the junior United States Senator from New Jersey since 2013 and a member of the Democratic Party. The first African-American U.S. Senator from New Jersey, he was previously the 36th Mayor of Newark from 2006 to 2013. Before that, Booker served on the Municipal Council of Newark for the Central Ward from 1998 to 2002. On February 1, 2019, he announced his campaign to run for the Democratic nomination for President of the United States in the 2020 United States presidential election.",
#     current_position: "U.S. Senator",
#     state: "New Jersey",
#     website: "https://corybooker.com/",
#     twitter: "https://twitter.com/CoryBooker",
#     logo: "https://corybooker.com/wp-content/themes/bookerstrap/images/Cory-Logo.svg",
#     image: "https://www.praise945.com/wp-content/uploads/2016/02/Mayor-Cory-Booker.jpg",
#     born: "Washington, D.C.")
#
#   Candidate.create(
#     name: "Kamala Harris",
#     age: 54,
#     bio: "Kamala Devi Harris (born October 20, 1964) is an American lawyer and politician serving as the junior United States Senator from California since 2017. A member of the Democratic Party, she previously served as the 27th District Attorney of San Francisco from 2004 to 2011 and 32nd Attorney General of California from 2011 until 2017. She is a candidate for the Democratic nomination for President of the United States in the 2020 election.",
#     current_position: "U.S. Senator",
#     state: "California",
#     website: "https://kamalaharris.org/",
#     twitter: "https://twitter.com/KamalaHarris",
#     logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Kamala_Harris_2020_presidential_campaign_logo.svg/1200px-Kamala_Harris_2020_presidential_campaign_logo.svg.png",
#     image: "https://images-na.ssl-images-amazon.com/images/I/61q8syRNTDL._SY679_.jpg",
#     born: "Oakland, California")
#
# @user_1 = User.create(first_name: "user1", last_name: "user1", username: "user1", password_digest: "user1")
# @user_2 = User.create(first_name: "user2", last_name: "user2", username: "user2", password_digest: "user2")
# @user_3 = User.create(first_name: "user3", last_name: "user3", username: "user3", password_digest: "user3")
#
#
# csv = CSV.read("policies3.csv")
#
# i = 1
# 23.times do
#     if csv[0][i]
#      policy_created = Policy.create(title: csv[0][i], description: csv[1][i])
#      CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[1][0]).id, policy_id: policy_created.id)
#      i+=1
#    end
#   end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[2][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[2][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[3][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[3][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[4][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[4][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[5][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[5][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[6][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[6][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[7][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[7][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[8][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[8][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[9][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[9][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[10][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[10][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#     i = 1
#     23.times do
#         if csv[0][i]
#          policy_created = Policy.create(title: csv[0][i], description: csv[11][i])
#          CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[11][0]).id, policy_id: policy_created.id)
#          i+=1
#        end
#       end
#
#     i = 1
#     23.times do
#         if csv[0][i]
#          policy_created = Policy.create(title: csv[0][i], description: csv[12][i])
#          CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[12][0]).id, policy_id: policy_created.id)
#          i+=1
#        end
#       end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[13][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[13][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[14][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[14][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[15][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[15][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[16][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[16][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[17][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[17][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[18][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[18][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[19][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[19][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[20][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[20][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[21][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[21][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[22][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[22][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
#   i = 1
#   23.times do
#       if csv[0][i]
#        policy_created = Policy.create(title: csv[0][i], description: csv[23][i])
#        CandidatePolicy.create(candidate_id: Candidate.find_by(name: csv[23][0]).id, policy_id: policy_created.id)
#        i+=1
#      end
#     end
