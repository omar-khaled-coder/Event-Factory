class AddServicesToPlanners < ActiveRecord::Migration[7.0]
  def change
    add_column :planners, :services, :text, array: true, default: []
  end
end
