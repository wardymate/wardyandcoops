# Feature: responses
# page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Responses' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'Accept' do
    visit root_path
    click_link "Join Us", match: :first
    fill_in "Names", with: "test users"
    choose(id: "wedding_response_coming_yes")
    fill_in "Dietry requirements", with: "none"
    select("We're bringing the camper, save us a pitch!", from: "wedding_response_accomodation")
    check(id: "wedding_response_friday_night")
    check(id: "wedding_response_breakfast")
    click_button "Submit"
    expect(page).to have_content 'Response submitted successfully'
  end
end
