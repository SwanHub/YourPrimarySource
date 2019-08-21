require 'rails_helper'

describe 'Route to Policies Index' do
  before(:each) do
    @policy_1 = Policy.create(title: "Healthcare", description: "I love healthcare")
    @policy_2 = Policy.create(title: "Criminal Justice", description: "I love criminal justice")
    @policy_3 = Policy.create(title: "Guns", description: "I love guns")
  end

  it 'has an index page' do
    visit policies_path
    expect(page.status_code).to eq(200)
  end

  it 'the index page shows all policies' do

    visit policies_path

    expect(page).to have_content(@policy_1.title)
    expect(page).to have_content(@policy_2.title)
    expect(page).to have_content(@policy_3.title)
  end

end
