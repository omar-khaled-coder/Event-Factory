require "test_helper"

class PlannersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planner = planners(:one)
  end

  test "should get index" do
    get planners_url
    assert_response :success
  end

  test "should get new" do
    get new_planner_url
    assert_response :success
  end

  test "should create planner" do
    assert_difference("Planner.count") do
      post planners_url, params: { planner: { description: @planner.description, latitude: @planner.latitude, longitude: @planner.longitude, name: @planner.name, price_range: @planner.price_range, rating: @planner.rating, short_description: @planner.short_description, user_id: @planner.user_id } }
    end

    assert_redirected_to planner_url(Planner.last)
  end

  test "should show planner" do
    get planner_url(@planner)
    assert_response :success
  end

  test "should get edit" do
    get edit_planner_url(@planner)
    assert_response :success
  end

  test "should update planner" do
    patch planner_url(@planner), params: { planner: { description: @planner.description, latitude: @planner.latitude, longitude: @planner.longitude, name: @planner.name, price_range: @planner.price_range, rating: @planner.rating, short_description: @planner.short_description, user_id: @planner.user_id } }
    assert_redirected_to planner_url(@planner)
  end

  test "should destroy planner" do
    assert_difference("Planner.count", -1) do
      delete planner_url(@planner)
    end

    assert_redirected_to planners_url
  end
end
