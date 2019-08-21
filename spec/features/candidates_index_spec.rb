require 'rails_helper'

describe 'Route to Candidates Index' do
  before(:each) do
    @candidate_1 = Candidate.create(name: "Richard Nixon", age: 54, bio: "I am not a crook", current_position: "deceased", state: "Hell", website: "website.com", logo: "logo.png", born: "Mother's Womb", twitter: "twitter.tweet")
    @candidate_2 = Candidate.create(name: "Bill Clinton", age: 69, bio: "I can play the saxophone", current_position: "HBIC", state: "NY", website: "website.com", logo: "logo.png", born: "Mother's Womb", twitter: "twitter.tweet")
    @candidate_3 = Candidate.create(name: "Al Gore", age: 71, bio: "Hanging Chad", current_position: "Captain Planet", state: "Denial", website: "website.com", logo: "logo.png", born: "Mother's Womb", twitter: "twitter.tweet")
  end

  it 'has an index page' do
    visit candidates_path
    expect(page.status_code).to eq(200)
  end

  it 'the index page shows all candidate names' do

    visit candidates_path

    expect(page).to have_content(@candidate_1.name)
    expect(page).to have_content(@candidate_2.name)
    expect(page).to have_content(@candidate_3.name)
  end

end
