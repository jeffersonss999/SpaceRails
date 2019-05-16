require "application_system_test_case"

class AddShipToAliensTest < ApplicationSystemTestCase
  setup do
    @add_ship_to_alien = add_ship_to_aliens(:one)
  end

  test "visiting the index" do
    visit add_ship_to_aliens_url
    assert_selector "h1", text: "Add Ship To Aliens"
  end

  test "creating a Add ship to alien" do
    visit add_ship_to_aliens_url
    click_on "New Add Ship To Alien"

    fill_in "Ship", with: @add_ship_to_alien.ship_id
    click_on "Create Add ship to alien"

    assert_text "Add ship to alien was successfully created"
    click_on "Back"
  end

  test "updating a Add ship to alien" do
    visit add_ship_to_aliens_url
    click_on "Edit", match: :first

    fill_in "Ship", with: @add_ship_to_alien.ship_id
    click_on "Update Add ship to alien"

    assert_text "Add ship to alien was successfully updated"
    click_on "Back"
  end

  test "destroying a Add ship to alien" do
    visit add_ship_to_aliens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add ship to alien was successfully destroyed"
  end
end
