require 'rails_helper'

describe 'Candidate Show Page' do
  before(:each) do
    @candidate_1 = Candidate.create(name: "Richard Nixon", age: 54, bio: "I am not a crook", current_position: "deceased", state: "Hell", website: "website.com", logo: "logo.png", born: "Mother's Womb", twitter: "twitter.tweet")
    @candidate_2 = Candidate.create(name: "Bill Clinton", age: 69, bio: "I can play the saxophone", current_position: "HBIC", state: "NY", website: "website.com", logo: "logo.png", born: "Mother's Womb", twitter: "twitter.tweet")
    @candidate_3 = Candidate.create(name: "Al Gore", age: 71, bio: "Hanging Chad", current_position: "Captain Planet", state: "Denial", website: "website.com", logo: "logo.png", born: "Mother's Womb", twitter: "twitter.tweet")

    @policy_1 = Policy.create(title: "Healthcare", description: "I love healthcare")
    @policy_2 = Policy.create(title: "Criminal Justice", description: "I love criminal justice")
    @policy_3 = Policy.create(title: "Guns", description: "I love guns")

    @CandidatePolicy_1 = CandidatePolicy.create(candidate_id: @candidate_1[:id], policy_id: @policy_1[:id])
    @CandidatePolicy_2 = CandidatePolicy.create(candidate_id: @candidate_2[:id], policy_id: @policy_2[:id])
    @CandidatePolicy_3 = CandidatePolicy.create(candidate_id: @candidate_3[:id], policy_id: @policy_3[:id])
  end

  it 'show page renders properly' do
    visit candidate_path(@candidate_1)
    expect(page.status_code).to eq(200)

    visit candidate_path(@candidate_2)
    expect(page.status_code).to eq(200)

    visit candidate_path(@candidate_3)
    expect(page.status_code).to eq(200)
  end

  it 'renders the candidate name in an h1 tag' do
    visit candidate_path(@candidate_1)
    expect(page).to have_css("h1", text: @candidate_1.name)

    visit candidate_path(@candidate_2)
    expect(page).to have_css("h1", text: @candidate_2.name)

    visit candidate_path(@candidate_3)
    expect(page).to have_css("h1", text: @candidate_3.name)
  end

  it "display's a candidate's biographical information" do
    visit candidate_path(@candidate_1)
    expect(page).to have_content(@candidate_1.name)
    expect(page).to have_content(@candidate_1.age)
    expect(page).to have_content(@candidate_1.bio)
    expect(page).to have_content(@candidate_1.current_position)
    expect(page).to have_content(@candidate_1.state)
    expect(page).to have_content(@candidate_1.born)

    visit candidate_path(@candidate_2)
    expect(page).to have_content(@candidate_2.name)
    expect(page).to have_content(@candidate_2.age)
    expect(page).to have_content(@candidate_2.bio)
    expect(page).to have_content(@candidate_2.current_position)
    expect(page).to have_content(@candidate_2.state)
    expect(page).to have_content(@candidate_2.born)

    visit candidate_path(@candidate_3)
    expect(page).to have_content(@candidate_3.name)
    expect(page).to have_content(@candidate_3.age)
    expect(page).to have_content(@candidate_3.bio)
    expect(page).to have_content(@candidate_3.current_position)
    expect(page).to have_content(@candidate_3.state)
    expect(page).to have_content(@candidate_3.born)
  end

  it "display's a candidate's policies" do
    visit candidate_path(@candidate_1)
    expect(page).to have_content(@policy_1.title)

    visit candidate_path(@candidate_2)
    expect(page).to have_content(@policy_2.title)

    visit candidate_path(@candidate_3)
    expect(page).to have_content(@policy_3.title)
  end

end
