require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  test "visiting the home" do
    visit root_url # "/"
    assert_selector "h1", text: "Trace ta balade"
  end

  test "visiting the navbar as visitor" do
    visit root_url
    click_on "Connexion"
  end

  test "visiting the navbar as current user" do

    login_as users(:toto)
    visit root_url
    click_on "Mes balades"
  end
end
