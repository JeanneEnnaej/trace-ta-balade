require "application_system_test_case"

class WalksTest < ApplicationSystemTestCase
  test "visiting the index as current user" do
    login_as users(:toto)
    visit "/walks"
    assert_selector "p", text: "Nouvelle balade"
  end

  test "Mes balades in navbar" do
    login_as users(:toto)
    visit "/walks"
    click_on "Mes balades"
  end

  test "visiting the new walk as current user" do
    login_as users(:toto)
    visit "/walks/new"
    assert_selector "p", text: "Nom de la balade"
  end

  test "visiting the navbar as visitor in index" do
    visit "/walks"
    assert_selector "h2", text: "Log in"
  end

  test "visiting the navbar as current user in index" do

    login_as users(:toto)
    visit "/walks"
    click_on "Mes balades"
  end

  # test "visiting the show as current user" do
  #   login_as users(:toto)
  #   visit "/walks"
  #   click_on "Voir la balade"
  # end

  # test "lets a signed in user create a new walk" do
  #   login_as users(:toto)
  #   visit "/walks/new"
  #   # save_screenshot

  #   fill_in "title", with: "Test"
  #   fill_in "address", with: "139 rue Léon Blum"
  #   fill_in "date", with: "2022/10/10"
  #   # save_screenshot

  #   click_on "Créer la balade"
  #   # save_screenshot

  #   assert_text "Creating an Walk"
  # end

end
