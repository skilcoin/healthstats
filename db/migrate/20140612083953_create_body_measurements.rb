class CreateBodyMeasurements < ActiveRecord::Migration
  def change
    create_table :body_measurements do |t|
      t.date :measurementDate
      t.integer :occurrence
      t.float :weight
      t.float :bodyFat

      t.timestamps
    end
  end
end
