require "application_system_test_case"

class PlannerBookingsTest < ApplicationSystemTestCase
  setup do
    @planner_booking = planner_bookings(:one)
  end

  test "visiting the index" do
    visit planner_bookings_url
    assert_selector "h1", text: "Planner bookings"
  end

  test "should create planner booking" do
    visit planner_bookings_url
    click_on "New planner booking"

    fill_in "End time", with: @planner_booking.end_time
    fill_in "Planner", with: @planner_booking.planner_id
    fill_in "Start time", with: @planner_booking.start_time
    fill_in "User", with: @planner_booking.user_id
    click_on "Create Planner booking"

    assert_text "Planner booking was successfully created"
    click_on "Back"
  end

  test "should update Planner booking" do
    visit planner_booking_url(@planner_booking)
    click_on "Edit this planner booking", match: :first

    fill_in "End time", with: @planner_booking.end_time
    fill_in "Planner", with: @planner_booking.planner_id
    fill_in "Start time", with: @planner_booking.start_time
    fill_in "User", with: @planner_booking.user_id
    click_on "Update Planner booking"

    assert_text "Planner booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Planner booking" do
    visit planner_booking_url(@planner_booking)
    click_on "Destroy this planner booking", match: :first

    assert_text "Planner booking was successfully destroyed"
  end
end
