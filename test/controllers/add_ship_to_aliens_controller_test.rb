require 'test_helper'

class AddShipToAliensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_ship_to_alien = add_ship_to_aliens(:one)
  end

  test "should get index" do
    get add_ship_to_aliens_url
    assert_response :success
  end

  test "should get new" do
    get new_add_ship_to_alien_url
    assert_response :success
  end

  test "should create add_ship_to_alien" do
    assert_difference('AddShipToAlien.count') do
      post add_ship_to_aliens_url, params: { add_ship_to_alien: { ship_id: @add_ship_to_alien.ship_id } }
    end

    assert_redirected_to add_ship_to_alien_url(AddShipToAlien.last)
  end

  test "should show add_ship_to_alien" do
    get add_ship_to_alien_url(@add_ship_to_alien)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_ship_to_alien_url(@add_ship_to_alien)
    assert_response :success
  end

  test "should update add_ship_to_alien" do
    patch add_ship_to_alien_url(@add_ship_to_alien), params: { add_ship_to_alien: { ship_id: @add_ship_to_alien.ship_id } }
    assert_redirected_to add_ship_to_alien_url(@add_ship_to_alien)
  end

  test "should destroy add_ship_to_alien" do
    assert_difference('AddShipToAlien.count', -1) do
      delete add_ship_to_alien_url(@add_ship_to_alien)
    end

    assert_redirected_to add_ship_to_aliens_url
  end
end
