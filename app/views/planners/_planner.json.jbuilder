json.extract! planner, :id, :name, :rating, :description, :short_description, :price_range, :user_id, :latitude, :longitude, :created_at, :updated_at
json.url planner_url(planner, format: :json)
