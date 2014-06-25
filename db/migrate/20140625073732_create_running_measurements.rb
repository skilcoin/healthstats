class CreateRunningMeasurements < ActiveRecord::Migration
  def change
    create_table :running_measurements do |t|
      t.float :distance_miles
      t.integer :duration_seconds
      t.float :calories

      t.timestamps
    end
  end
end
