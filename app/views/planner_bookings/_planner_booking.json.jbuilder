json.extract! planner_booking, :id, :start_time, :end_time, :user_id, :planner_id, :created_at, :updated_at
json.url planner_booking_url(planner_booking, format: :json)
