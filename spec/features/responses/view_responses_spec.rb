# Feature: responses
# page
#   As a user
#   I want to visit a responses page
#   So I can see who has responded
feature "Responses" do

  # Scenario: Visit the responses
  #   Given I am a user
  #   And I am logged in
  #   When I visit the responses page
  #   Then I see responses
  scenario "user signed in" do
    user = FactoryBot.create(:user)
    wedding_response = FactoryBot.create(:wedding_response)
    signin(user.email, user.password)
    visit wedding_responses_path
    expect(page).to have_content "Names"
    expect(page).to have_content wedding_response.names
  end

  # Scenario: Visit the responses
  #   Given I am not logged in
  #   When I visit the responses page
  #   Then I am redirected to the home page
  scenario "user NOT signed in" do
    wedding_response = FactoryBot.create(:wedding_response)
    visit wedding_responses_path
    expect(page).to_not have_content "Responses"
    expect(page).to have_content "Date"
  end
end
