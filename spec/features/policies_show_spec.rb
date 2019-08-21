require 'rails_helper'

describe 'Policy Show Page' do
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

    @user_1 = User.create(first_name: "user1", last_name: "user1", username: "user1", password_digest: "user1")
    @user_2 = User.create(first_name: "user2", last_name: "user2", username: "user2", password_digest: "user2")
    @user_3 = User.create(first_name: "user3", last_name: "user3", username: "user3", password_digest: "user3")

    @post_1 = Post.create(user_id: @user_1[:id], policy_id: @policy_1[:id], title: "post1 title", content: "post1 content")
    @post_2 = Post.create(user_id: @user_2[:id], policy_id: @policy_2[:id], title: "post2 title", content: "post2 content")
    @post_3 = Post.create(user_id: @user_3[:id], policy_id: @policy_3[:id], title: "post3 title", content: "post3 content")
  end

  it 'show page renders properly' do
    visit policy_path(@policy_1)
    expect(page.status_code).to eq(200)

    visit candidate_path(@policy_2)
    expect(page.status_code).to eq(200)

    visit candidate_path(@policy_3)
    expect(page.status_code).to eq(200)
  end

  it 'renders the policy title in an h1 tag' do
    visit policy_path(@policy_1)
    expect(page).to have_css("h1", text: @policy_1.title)

    visit policy_path(@policy_2)
    expect(page).to have_css("h1", text: @policy_2.title)

    visit policy_path(@policy_3)
    expect(page).to have_css("h1", text: @policy_3.title)
  end

  it 'renders the policy description in an h3 tag' do
    visit policy_path(@policy_1)
    expect(page).to have_css("h3", text: @policy_1.description)

    visit policy_path(@policy_2)
    expect(page).to have_css("h3", text: @policy_2.description)

    visit policy_path(@policy_3)
    expect(page).to have_css("h3", text: @policy_3.description)
  end

  it "displays all of the posts related to a specific policy" do
    visit policy_path(@policy_1)
      @policy_1.posts.each do |post|
        expect(page).to have_content(post.title)
      end
  end

  it "displays the author of each post" do
    visit policy_path(@policy_1)
    expect(page).to have_content(@post_1.user.full_name)
  end
  it "displays the title of each post" do
    visit policy_path(@policy_1)
    expect(page).to have_content(@post_1.title)
  end
  it "displays the content of each post" do
    visit policy_path(@policy_1)
    expect(page).to have_content(@post_1.content)
  end

  # it 'has a create new post button' do
  #   expect(page).to have_button("Create New Post")
  # end

  # it "create new post button directs to the posts new page" do
  #
  # end

end
