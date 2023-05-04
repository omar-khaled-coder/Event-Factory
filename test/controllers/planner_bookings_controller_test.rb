require "test_helper"

class PlannerBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planner_booking = planner_bookings(:one)
  end

  test "should get index" do
    get planner_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_planner_booking_url
    assert_response :success
  end

  test "should create planner_booking" do
    assert_difference("PlannerBooking.count") do
      post planner_bookings_url, params: { planner_booking: { end_time: @planner_booking.end_time, planner_id: @planner_booking.planner_id, start_time: @planner_booking.start_time, user_id: @planner_booking.user_id } }
    end

    assert_redirected_to planner_booking_url(PlannerBooking.last)
  end

  test "should show planner_booking" do
    get planner_booking_url(@planner_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_planner_booking_url(@planner_booking)
    assert_response :success
  end

  test "should update planner_booking" do
    patch planner_booking_url(@planner_booking), params: { planner_booking: { end_time: @planner_booking.end_time, planner_id: @planner_booking.planner_id, start_time: @planner_booking.start_time, user_id: @planner_booking.user_id } }
    assert_redirected_to planner_booking_url(@planner_booking)
  end

  test "should destroy planner_booking" do
    assert_difference("PlannerBooking.count", -1) do
      delete planner_booking_url(@planner_booking)
    end

    assert_redirected_to planner_bookings_url
  end
end
