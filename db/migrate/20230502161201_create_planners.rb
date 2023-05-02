class CreatePlanners < ActiveRecord::Migration[7.0]
  def change
    create_table :planners do |t|
      t.string :name
      t.float :rating
      t.text :description
      t.string :short_description
      t.string :price_range
      t.references :user, null: false, foreign_key: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
