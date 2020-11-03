require 'test_helper'

class BoringAirlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boring_airline = boring_airlines(:one)
  end

  test "should get index" do
    get boring_airlines_url
    assert_response :success
  end

  test "should get new" do
    get new_boring_airline_url
    assert_response :success
  end

  test "should create boring_airline" do
    assert_difference('BoringAirline.count') do
      post boring_airlines_url, params: { boring_airline: { Content: @boring_airline.Content } }
    end

    assert_redirected_to boring_airline_url(BoringAirline.last)
  end

  test "should show boring_airline" do
    get boring_airline_url(@boring_airline)
    assert_response :success
  end

  test "should get edit" do
    get edit_boring_airline_url(@boring_airline)
    assert_response :success
  end

  test "should update boring_airline" do
    patch boring_airline_url(@boring_airline), params: { boring_airline: { Content: @boring_airline.Content } }
    assert_redirected_to boring_airline_url(@boring_airline)
  end

  test "should destroy boring_airline" do
    assert_difference('BoringAirline.count', -1) do
      delete boring_airline_url(@boring_airline)
    end

    assert_redirected_to boring_airlines_url
  end
end
